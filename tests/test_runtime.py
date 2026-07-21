from __future__ import annotations

import importlib.util
import json
from pathlib import Path
import shutil
import sys
import tempfile
import unittest
from unittest import mock

from lupa.lua54 import LuaRuntime


ROOT = Path(__file__).resolve().parents[1]
MOD_ROOT = ROOT / "RandomDay"


def lua_path(path: Path) -> str:
    return path.resolve().as_posix()


def lua_literal(value) -> str:
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, (int, float)):
        return str(value)
    return json.dumps(str(value))


class LuaRuntimeTests(unittest.TestCase):
    def setUp(self) -> None:
        self.lua = LuaRuntime(unpack_returned_tuples=True)
        self.lua.execute(f"_G.RANDOMDAY_MOD_ROOT = {json.dumps(lua_path(MOD_ROOT))}")

    def load(self, relative: str):
        return self.lua.execute(f"return dofile({json.dumps(lua_path(MOD_ROOT / relative))})")

    def assert_bounded(self, text: str, maximum_lines: int, maximum_width: int = 42) -> None:
        lines = str(text).splitlines()
        self.assertTrue(lines, text)
        self.assertLessEqual(len(lines), maximum_lines, text)
        for line in lines:
            self.assertTrue(line.strip(), text)
            self.assertLessEqual(len(line.encode("utf-8")), maximum_width, text)

    def test_all_lua_files_parse_with_lua54(self) -> None:
        for path in sorted(MOD_ROOT.rglob("*.lua")):
            with self.subTest(path=path.relative_to(ROOT).as_posix()):
                result = self.lua.execute(
                    "local chunk, err = loadfile(...); return chunk ~= nil, err",
                    lua_path(path),
                )
                ok, err = result
                self.assertTrue(ok, err)

    def test_runtime_source_excludes_private_control_integrations(self) -> None:
        combined = "\n".join(
            path.read_text(encoding="utf-8", errors="strict")
            for path in sorted((MOD_ROOT / "Scripts").rglob("*.lua"))
        ).lower()
        for forbidden in (
            "webhook" + "_url",
            "private" + "_outbox",
            "production" + "_deploy",
            "control" + "_plane",
        ):
            self.assertNotIn(forbidden, combined)

    def test_all_289_profiles_validate_and_messages_are_bounded(self) -> None:
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        schema = self.load("Scripts/ax_sandbox/schema.lua")
        validator = self.load("Scripts/ax_sandbox/validator.lua")
        messages = self.load("Scripts/ax_profiles/messages_17.lua")
        translation = self.load("Scripts/ax_profiles/translation.lua")
        config = self.load("Scripts/ax_config/server.lua")
        display = config["player_message"]
        maximum_width = int(display["max_line_chars"])
        family_names = profiles["family_names"]
        self.assertEqual(len(family_names), 17)
        profile_ids: set[str] = set()
        count = 0
        for family_index in range(1, len(family_names) + 1):
            family_name = family_names[family_index]
            family = profiles["families"][family_name]
            family_profiles = family["profiles"]
            self.assertEqual(len(family_profiles), 17)
            for day in range(1, 18):
                profile = family_profiles[day]
                validation = validator["validate_profile"](profile, schema)
                if isinstance(validation, tuple):
                    valid, error = validation
                else:
                    valid, error = validation, None
                self.assertTrue(valid, f"{family_name} day {day}: {error}")
                self.assertEqual(profile["day"], day)
                self.assertNotIn(profile["id"], profile_ids)
                profile_ids.add(profile["id"])
                pack = messages["get"](profile)
                translated = translation["translate"](profile)
                self.assertEqual(pack["translation"]["profile_id"], translated["profile_id"])
                self.assertEqual(pack["join"], translation["format_join"](translated, None, display))
                self.assert_bounded(pack["join"], int(display["max_join_lines"]), maximum_width)
                for index in range(1, len(pack["jokes"]) + 1):
                    self.assert_bounded(pack["jokes"][index], int(display["max_note_lines"]), maximum_width)
                for key in ("hostile", "portal", "order", "gatekeeper"):
                    expected = translation["format_warning"](translated, key, display)
                    self.assertEqual(pack["warnings"][key], expected)
                    self.assert_bounded(expected, int(display["max_warning_lines"]), maximum_width)
                count += 1
        self.assertEqual(count, 289)

    def test_profile_overrides_persist_across_every_generated_profile(self) -> None:
        config = self.load("Scripts/ax_config/server.lua")
        defaults = config["sandbox"]["profile_overrides"]
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        expected_defaults = {
            "HardcoreMode": False,
            "AllowIronMode": False,
            "StructuralSupportLimit": 0,
            "BridgeSupports": 0,
        }
        self.assertEqual({key: defaults[key] for key in expected_defaults}, expected_defaults)
        for family_index in range(1, len(profiles["family_names"]) + 1):
            family_name = profiles["family_names"][family_index]
            for day in range(1, 18):
                settings = profiles["families"][family_name]["profiles"][day]["settings"]
                self.assertEqual({key: settings[key] for key in expected_defaults}, expected_defaults)

        with tempfile.TemporaryDirectory() as temp_dir:
            copied_root = Path(temp_dir) / "RandomDay"
            shutil.copytree(MOD_ROOT, copied_root)
            config_path = copied_root / "Scripts" / "ax_config" / "server.lua"
            text = config_path.read_text(encoding="utf-8")
            old = """            HardcoreMode = false,\n            AllowIronMode = false,\n            StructuralSupportLimit = 0,\n            BridgeSupports = 0,"""
            new = """            HardcoreMode = true,\n            AllowIronMode = true,\n            StructuralSupportLimit = 250,\n            BridgeSupports = 30,"""
            self.assertEqual(text.count(old), 1)
            config_path.write_text(text.replace(old, new), encoding="utf-8")

            lua = LuaRuntime(unpack_returned_tuples=True)
            lua.execute(f"_G.RANDOMDAY_MOD_ROOT = {json.dumps(lua_path(copied_root))}")
            generated = lua.execute(
                f"return dofile({json.dumps(lua_path(copied_root / 'Scripts/ax_profiles/randomday_17.lua'))})"
            )
            expected_custom = {
                "HardcoreMode": True,
                "AllowIronMode": True,
                "StructuralSupportLimit": 250,
                "BridgeSupports": 30,
            }
            for family_index in range(1, len(generated["family_names"]) + 1):
                family_name = generated["family_names"][family_index]
                for day in range(1, 18):
                    settings = generated["families"][family_name]["profiles"][day]["settings"]
                    self.assertEqual({key: settings[key] for key in expected_custom}, expected_custom)

            builder = lua.execute(
                f"return dofile({json.dumps(lua_path(copied_root / 'Scripts/ax_profiles/profile_builder.lua'))})"
            )
            schema = lua.execute(
                f"return dofile({json.dumps(lua_path(copied_root / 'Scripts/ax_sandbox/schema.lua'))})"
            )
            ok, error = lua.execute(
                "return pcall(...)",
                builder["_test"]["normalize_profile_overrides"],
                lua.table_from({"StructuralSupportLimit": 1001}, recursive=True),
                schema,
            )
            self.assertFalse(ok)
            self.assertIn("outside supported range", str(error))

    def test_dictionary_and_translation_cover_public_states_and_ranges(self) -> None:
        dictionary = self.load("Scripts/ax_profiles/dictionary.lua")
        translation = self.load("Scripts/ax_profiles/translation.lua")
        runtime_status = self.load("Scripts/ax_runtime/status.lua")
        schema = self.load("Scripts/ax_sandbox/schema.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        config = self.load("Scripts/ax_config/server.lua")

        self.assertEqual(config["player_message"]["max_line_chars"], 42)
        self.assertEqual(config["player_message"]["max_join_lines"], 4)
        self.assertEqual(config["player_message"]["max_warning_lines"], 3)
        self.assertEqual(config["player_message"]["max_note_lines"], 3)

        schema_keys = [str(schema["key_order"][index]) for index in range(1, len(schema["key_order"]) + 1)]
        dictionary_keys = {str(key) for key in dictionary["settings"].keys()}
        self.assertEqual(len(schema_keys), 46)
        self.assertEqual(dictionary_keys, set(schema_keys))

        for key in schema_keys:
            definition = dictionary["settings"][key]
            value_type = str(schema["types"][key])
            if value_type == "boolean":
                self.assertEqual(definition["kind"], "boolean", key)
                self.assertTrue(str(definition["true_text"]), key)
                self.assertTrue(str(definition["false_text"]), key)
                continue
            accepted = schema["ranges"][key]
            self.assertIsNotNone(accepted, key)
            self.assertEqual(definition["accepted_minimum"], accepted[1], key)
            self.assertEqual(definition["accepted_maximum"], accepted[2], key)
            if definition["kind"] == "enum":
                for value in range(int(accepted[1]), int(accepted[2]) + 1):
                    self.assertIsNotNone(definition["values"][value], f"{key}={value}")

        dictionary_payload = runtime_status["_test"]["dictionary_payload"](translation)
        expected_states = {
            "active_marker_found_completed_run_prepare_next_unused_family",
            "active_marker_found_family_locked_prepare_next_day",
            "state_recovery_rewrite_prepared_profile_no_reroll",
            "supervision_reconfirm_prepared_profile_no_advance",
            "bootstrap_prepare_first_family_start_day",
            "prepared_profile_values_found_without_marker_prepare_next_day",
            "prepared_profile_values_found_without_marker_completed_run_prepare_next_unused_family",
        }
        self.assertEqual({str(key) for key in dictionary_payload["selection_states"].keys()}, expected_states)
        self.assertEqual(
            {str(key) for key in dictionary_payload["package_modes"].keys()},
            {"dedicated_server", "singleplayer_manual"},
        )
        self.assertEqual(
            {str(key) for key in dictionary_payload["session_modes"].keys()},
            {"persistent_dedicated", "temporary_dedicated", "singleplayer_lan"},
        )

        translated_count = 0
        for family_index in range(1, len(profiles["family_names"]) + 1):
            family_name = profiles["family_names"][family_index]
            family_profiles = profiles["families"][family_name]["profiles"]
            for day in range(1, 18):
                profile = family_profiles[day]
                valid, translated = translation["validate_profile_translation"](profile)
                self.assertTrue(valid, f"{family_name} day {day}: {translated}")
                self.assertEqual(len(translated["setting_meanings"]), 46)
                self.assertGreaterEqual(translated["overall"]["score"], 0)
                self.assertLessEqual(translated["overall"]["score"], 5)
                self.assert_bounded(translation["format_join"](translated, translated, None), 4)
                self.assert_bounded(translation["format_note"](translated, None), 3)
                for event_kind in ("hostile", "portal", "order", "gatekeeper"):
                    warning = translation["format_warning"](translated, event_kind, None)
                    self.assert_bounded(warning, 3)
                    self.assertNotIn("EnemySpawnRate", warning)
                translated_count += 1
        self.assertEqual(translated_count, 289)

    def test_generated_profile_reference_includes_dictionary_translation_contract(self) -> None:
        generated = ROOT / "docs" / "profiles" / "profiles.generated.json"
        data = json.loads(generated.read_text(encoding="utf-8"))
        self.assertEqual(data["schema"], "randomday_profile_reference_v2")
        self.assertEqual(data["family_count"], 17)
        self.assertEqual(data["profile_count"], 289)
        self.assertEqual(len(data["dictionary"]["settings"]), 46)
        contract = data["translation_contract"]
        self.assertEqual(contract["dictionary_version"], data["dictionary"]["version"])
        self.assertEqual(contract["setting_count"], 46)
        self.assertTrue(contract["profile_translation_embedded"])
        translations = [
            profile["translation"]
            for family in data["families"]
            for profile in family["profiles"]
        ]
        self.assertEqual(len(translations), 289)
        self.assertTrue(all(len(item["setting_meanings"]) == 46 for item in translations))

        generator_path = ROOT / "tools" / "generate_profile_docs.py"
        spec = importlib.util.spec_from_file_location("randomday_profile_docs", generator_path)
        self.assertIsNotNone(spec)
        self.assertIsNotNone(spec.loader)
        generator = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(generator)
        with mock.patch.object(sys, "argv", [str(generator_path), "--check"]):
            self.assertEqual(generator.main(), 0)

    def test_prepared_only_join_message_never_claims_active(self) -> None:
        message = self.load("Scripts/ax_player/message.lua")
        translation = self.load("Scripts/ax_profiles/translation.lua")
        prepared = self.lua.table_from({"day": 4, "display_name": "Prepared Example"})
        text = message["_test"]["make_join_message"](None, prepared, translation, None)
        self.assertIn("queued", text.lower())
        self.assertIn("prepared", text.lower())
        self.assertIn("not active yet", text.lower())
        self.assertNotIn("active:", text.lower())
        self.assert_bounded(text, 4)
        wide_options = self.lua.table_from({"max_line_chars": 1000, "max_join_lines": 1000})
        self.assert_bounded(
            message["_test"]["make_join_message"](None, prepared, translation, wide_options),
            4,
            maximum_width=64,
        )
        invalid_player = self.lua.execute("return { IsValid=function() return true end }")
        self.assertFalse(message["_test"]["display_warning_to_player"](invalid_player, "test", 0, False, None))

    def test_path_normalization_and_shell_metacharacter_rejection(self) -> None:
        utils = self.load("Scripts/ax_core/utils.lua")
        self.assertEqual(utils["normalize_path"]("C" + ":/server/world/../outside"), "C" + ":/server/outside")
        self.assertEqual(utils["normalize_path"](r"\\server\share\folder\..\world"), "//server/share/world")
        self.assertEqual(utils["normalize_path"](r"\\server\share\..\outside"), "//server/share/outside")
        self.assertFalse(utils["is_path_within"]("C" + ":/server/world/../../outside", "C" + ":/server/world"))
        self.assertTrue(utils["is_path_within"](r"\\server\share\world\file.ini", r"\\server\share\world"))
        self.assertFalse(utils["is_path_within"](r"\\server\share\world2\file.ini", r"\\server\share\world"))
        self.assertEqual(utils["path_key"]("C" + ":/Server/World.ini"), utils["path_key"]("c" + r":\server\World.ini"))
        accepted = utils["shell_quote"]("C" + ":/Server Files/World-1")
        if isinstance(accepted, tuple):
            accepted = accepted[0]
        self.assertTrue(accepted)
        rejected = utils["shell_quote"]("C" + ":/Server/$(`whoami`)")
        separator = self.lua.eval("package.config:sub(1, 1)")
        if separator == "\\":
            self.assertIsInstance(rejected, tuple)
            self.assertIsNone(rejected[0])
        else:
            if isinstance(rejected, tuple):
                rejected = rejected[0]
            self.assertEqual(rejected, "'C:/Server/$(`whoami`)'")
        self.assertTrue(utils["is_safe_path_component"]("My World-01"))
        for unsafe in (".", "..", "../outside", "nested/world", "bad\nname", "name$bad"):
            self.assertFalse(utils["is_safe_path_component"](unsafe), unsafe)
        with tempfile.TemporaryDirectory() as existing:
            self.assertTrue(utils["mkdir"](Path(existing).as_posix()))

    def test_mkdir_normalizes_execute_failures_and_preserves_success(self) -> None:
        utils = self.load("Scripts/ax_core/utils.lua")
        harness = self.lua.execute(
            r'''
            return function(utils, scenario)
                local original_execute = os.execute
                local original_rename = os.rename
                local execute_calls = 0
                os.rename = function() return nil, "fixture directory missing" end
                if scenario == "missing" then
                    os.execute = nil
                elseif scenario == "throw" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        error("Z:/private/operator/fixture")
                    end
                elseif scenario == "failure" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return nil, "exit", 7
                    end
                elseif scenario == "false_failure" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return false, "exit", 5
                    end
                elseif scenario == "nil_ambiguous" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return nil
                    end
                elseif scenario == "false_ambiguous" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return false
                    end
                elseif scenario == "zero_without_success" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return false, "exit", 0
                    end
                elseif scenario == "signal" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return nil, "signal", 9
                    end
                elseif scenario == "legacy_failure" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return 9
                    end
                elseif scenario == "legacy_success" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return 0
                    end
                elseif scenario == "success" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return true, "exit", 0
                    end
                elseif scenario == "true_only_success" then
                    os.execute = function()
                        execute_calls = execute_calls + 1
                        return true
                    end
                end
                local called, ok, err = pcall(utils.mkdir, "runtime/fixture")
                os.execute = original_execute
                os.rename = original_rename
                return called, ok, err, execute_calls
            end
            '''
        )

        missing = harness(utils, "missing")
        self.assertEqual(missing, (True, False, "directory creation unavailable: os.execute is not available", 0))

        throwing = harness(utils, "throw")
        self.assertEqual(throwing, (True, False, "directory creation command raised an error", 1))
        self.assertNotIn("private/operator", throwing[2])

        failed = harness(utils, "failure")
        self.assertEqual(failed, (True, False, "directory creation command failed with exit code 7", 1))

        false_failed = harness(utils, "false_failure")
        self.assertEqual(false_failed, (True, False, "directory creation command failed with exit code 5", 1))

        for scenario in ("nil_ambiguous", "false_ambiguous", "zero_without_success"):
            with self.subTest(scenario=scenario):
                ambiguous = harness(utils, scenario)
                self.assertEqual(
                    ambiguous,
                    (True, False, "directory creation command did not confirm success", 1),
                )

        signaled = harness(utils, "signal")
        self.assertEqual(signaled, (True, False, "directory creation command did not exit normally", 1))

        legacy_failed = harness(utils, "legacy_failure")
        self.assertEqual(legacy_failed, (True, False, "directory creation command failed with exit code 9", 1))

        succeeded = harness(utils, "success")
        self.assertEqual(succeeded, (True, True, None, 1))

        legacy_succeeded = harness(utils, "legacy_success")
        self.assertEqual(legacy_succeeded, (True, True, None, 1))

        true_only_succeeded = harness(utils, "true_only_success")
        self.assertEqual(true_only_succeeded, (True, True, None, 1))

    def test_runtime_directory_setup_stops_on_execute_unavailability(self) -> None:
        utils = self.load("Scripts/ax_core/utils.lua")
        harness = self.lua.execute(
            r'''
            return function(utils)
                local original_execute = os.execute
                local original_rename = os.rename
                local errors = {}
                local debug_calls = 0
                os.execute = nil
                os.rename = function() return nil, "fixture directory missing" end
                local config = {
                    paths = {
                        runtime_dir = "Z:/private/operator/runtime",
                        web_export_dir = "Z:/private/operator/web",
                    },
                }
                local log = {
                    error = function(message) table.insert(errors, message) end,
                    debug = function() debug_calls = debug_calls + 1 end,
                }
                local called, ok, err, failed_dir = pcall(
                    utils.ensure_runtime_dirs,
                    config,
                    "Z:/private/operator/mod",
                    log
                )
                os.execute = original_execute
                os.rename = original_rename
                return called, ok, err, failed_dir, #errors, debug_calls, errors[1]
            end
            '''
        )

        result = harness(utils)
        self.assertEqual(
            result,
            (
                True,
                False,
                "directory creation unavailable: os.execute is not available",
                "runtime",
                1,
                0,
                "runtime directory unavailable: runtime err=directory creation unavailable: os.execute is not available",
            ),
        )
        self.assertNotIn("Z:/private/operator", result[-1])

    def test_transaction_failure_injection_preserves_or_reports_rollback(self) -> None:
        utils = self.load("Scripts/ax_core/utils.lua")
        harness = self.lua.execute(
            r'''
            return function(utils, scenario, had_original)
                local files = {}
                if had_original then files["target"] = "original" end
                local validation_calls = 0
                local fs = {}
                fs.file_exists = function(path) return files[path] ~= nil end
                fs.read_file = function(path)
                    if scenario == "production_readback_fail" and path == "target" and files[path] == "replacement" then return nil, "injected read failure" end
                    return files[path], files[path] and nil or "missing"
                end
                fs.write_file = function(path, data)
                    if scenario == "pending_write_fail" and path == "pending" then return false, "injected write failure" end
                    files[path] = data
                    return true
                end
                fs.remove_file = function(path)
                    if scenario == "rollback_cleanup_fail" and path == "rollback" then return false, "injected cleanup failure" end
                    files[path] = nil
                    return true
                end
                fs.copy_file_verified = function(src, dst)
                    if scenario == "rollback_fail" and src == "rollback" then return false, "injected copy failure" end
                    if files[src] == nil then return false, "missing source" end
                    files[dst] = files[src]
                    return true
                end
                fs.rename_file = function(src, dst)
                    if src == "pending" and (scenario == "promotion_fail" or scenario == "rollback_fail") then return false, "injected promotion failure" end
                    if src == "rollback" and dst == "target" and scenario == "rollback_fail" then return false, "injected restore failure" end
                    if files[src] == nil or files[dst] ~= nil then return false, "rename refused" end
                    files[dst] = files[src]
                    files[src] = nil
                    return true
                end
                local validate = function(text)
                    validation_calls = validation_calls + 1
                    if scenario == "pending_validation_fail" then return false, "injected validation failure" end
                    if scenario == "production_validation_fail" and validation_calls > 1 then return false, "injected production validation failure" end
                    return true
                end
                local result = utils.transactional_replace("target", "replacement", {
                    fs=fs, pending_path="pending", rollback_path="rollback", validate=validate
                })
                return result, files["target"], files["rollback"], files["pending"]
            end
            '''
        )
        for scenario in (
            "pending_write_fail",
            "pending_validation_fail",
            "promotion_fail",
            "production_validation_fail",
            "production_readback_fail",
        ):
            with self.subTest(scenario=scenario):
                result, target, rollback, _ = harness(utils, scenario, True)
                self.assertFalse(result["ok"])
                self.assertEqual(target, "original")
                self.assertIsNone(rollback)
        first_write, target, _, _ = harness(utils, "pending_validation_fail", False)
        self.assertFalse(first_write["ok"])
        self.assertIsNone(target)
        rollback_failed, target, rollback, _ = harness(utils, "rollback_fail", True)
        self.assertFalse(rollback_failed["ok"])
        self.assertEqual(rollback_failed["rollback_status"], "restore_failed")
        self.assertIsNone(target)
        self.assertEqual(rollback, "original")
        cleanup_failed, target, rollback, pending = harness(utils, "rollback_cleanup_fail", True)
        self.assertFalse(cleanup_failed["ok"])
        self.assertEqual(cleanup_failed["status"], "replacement_committed_recovery_cleanup_failed")
        self.assertEqual(cleanup_failed["rollback_status"], "retained_after_success")
        self.assertEqual(cleanup_failed["replacement_method"], "sibling_rename")
        self.assertTrue(cleanup_failed["pending_readback_verified"])
        self.assertTrue(cleanup_failed["target_readback_verified"])
        self.assertEqual(target, "replacement")
        self.assertEqual(rollback, "original")
        self.assertIsNone(pending)

    def test_transaction_sidecars_recover_interrupted_replace_without_discarding_ambiguous_data(self) -> None:
        utils = self.load("Scripts/ax_core/utils.lua")
        harness = self.lua.execute(
            r'''
            return function(utils, target_present)
                local files = { rollback="original", pending="stale pending" }
                if target_present then files.target = "current" end
                local fs = {}
                fs.file_exists = function(path) return files[path] ~= nil end
                fs.read_file = function(path) return files[path], files[path] and nil or "missing" end
                fs.write_file = function(path, data) files[path] = data return true end
                fs.remove_file = function(path) files[path] = nil return true end
                fs.copy_file_verified = function(src, dst)
                    if files[src] == nil then return false, "missing source" end
                    files[dst] = files[src]
                    return true
                end
                fs.rename_file = function(src, dst)
                    if files[src] == nil or files[dst] ~= nil then return false, "rename refused" end
                    files[dst] = files[src]
                    files[src] = nil
                    return true
                end
                local result = utils.transactional_replace("target", "replacement", {
                    fs=fs, pending_path="pending", rollback_path="rollback",
                })
                return result, files.target, files.rollback, files.pending
            end
            '''
        )
        recovered, target, rollback, pending = harness(utils, False)
        self.assertTrue(recovered["ok"])
        self.assertTrue(recovered["recovered_interrupted_transaction"])
        self.assertTrue(recovered["pending_readback_verified"])
        self.assertTrue(recovered["target_readback_verified"])
        self.assertEqual(target, "replacement")
        self.assertIsNone(rollback)
        self.assertIsNone(pending)

        ambiguous, target, rollback, pending = harness(utils, True)
        self.assertFalse(ambiguous["ok"])
        self.assertEqual(ambiguous["status"], "stale_rollback_requires_review")
        self.assertEqual(target, "current")
        self.assertEqual(rollback, "original")
        self.assertIsNone(pending)

    def test_last_good_manifest_failure_preserves_previous_pair(self) -> None:
        manager = self.load("Scripts/ax_backup/manager.lua")
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory() as temp_dir:
            runtime = Path(temp_dir) / "runtime"
            last_good = runtime / "last_good"
            last_good.mkdir(parents=True)
            source = Path(temp_dir) / "SandboxSettings.ini"
            source.write_text("new sandbox\n", encoding="utf-8")
            sandbox_snapshot = last_good / "SandboxSettings.ini"
            manifest_snapshot = last_good / "manifest.lua"
            sandbox_snapshot.write_text("previous sandbox\n", encoding="utf-8")
            manifest_snapshot.write_text("return { profile_id = 'previous' }\n", encoding="utf-8")
            pending_manifest = manifest_snapshot.as_posix() + ".randomday.pending"
            self.lua.execute(
                f'''_G.__rd_manifest_pending={json.dumps(pending_manifest)}; _G.__rd_open=io.open;
                io.open=function(path, mode)
                    if path == _G.__rd_manifest_pending and tostring(mode):find("w") then return nil, "injected manifest write failure" end
                    return _G.__rd_open(path, mode)
                end'''
            )
            config = self.lua.table_from(
                {"version": "v0.0.0-test", "paths": {"runtime_dir": runtime.as_posix()}},
                recursive=True,
            )
            profile = self.lua.table_from(
                {"id": "new-profile", "display_name": "New Profile", "day": 2},
                recursive=True,
            )
            ok, error = manager["update_last_good"](
                config,
                source.as_posix(),
                profile,
                "newhash",
                lua_path(MOD_ROOT),
                log,
            )
            self.lua.execute("io.open=_G.__rd_open")
            self.assertFalse(ok)
            self.assertIn("previous pair preserved", error)
            self.assertEqual(sandbox_snapshot.read_text(encoding="utf-8"), "previous sandbox\n")
            self.assertEqual(manifest_snapshot.read_text(encoding="utf-8"), "return { profile_id = 'previous' }\n")

    def test_last_good_cleanup_failure_restores_both_previous_files(self) -> None:
        manager = self.load("Scripts/ax_backup/manager.lua")
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory(dir=ROOT / ".tmp") as temp_dir:
            runtime = Path(temp_dir) / "runtime"
            last_good = runtime / "last_good"
            last_good.mkdir(parents=True)
            source = Path(temp_dir) / "SandboxSettings.ini"
            source.write_text("new sandbox\n", encoding="utf-8")
            sandbox_snapshot = last_good / "SandboxSettings.ini"
            manifest_snapshot = last_good / "manifest.lua"
            sandbox_snapshot.write_text("previous sandbox\n", encoding="utf-8")
            manifest_snapshot.write_text("return { profile_id = 'previous' }\n", encoding="utf-8")
            manifest_rollback = manifest_snapshot.as_posix() + ".randomday.rollback"
            self.lua.execute(
                f'''_G.__rd_manifest_rollback={json.dumps(manifest_rollback)}; _G.__rd_remove=os.remove;
                os.remove=function(path)
                    if path == _G.__rd_manifest_rollback then return nil, "injected rollback cleanup failure" end
                    return _G.__rd_remove(path)
                end'''
            )
            config = self.lua.table_from(
                {"version": "v0.0.0-test", "paths": {"runtime_dir": runtime.as_posix()}},
                recursive=True,
            )
            profile = self.lua.table_from(
                {"id": "new-profile", "display_name": "New Profile", "day": 2},
                recursive=True,
            )
            try:
                ok, error = manager["update_last_good"](
                    config,
                    source.as_posix(),
                    profile,
                    "newhash",
                    lua_path(MOD_ROOT),
                    log,
                )
            finally:
                self.lua.execute("os.remove=_G.__rd_remove")
            self.assertFalse(ok)
            self.assertIn("previous pair preserved", error)
            self.assertEqual(sandbox_snapshot.read_text(encoding="utf-8"), "previous sandbox\n")
            self.assertEqual(manifest_snapshot.read_text(encoding="utf-8"), "return { profile_id = 'previous' }\n")
            self.assertFalse(Path(manifest_rollback).exists())

    def test_active_prepared_transition_and_state_persistence(self) -> None:
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        calendar = self.load("Scripts/ax_cycle/calendar.lua")
        serializer = self.load("Scripts/ax_sandbox/serializer.lua")
        schema = self.load("Scripts/ax_sandbox/schema.lua")
        utils = self.load("Scripts/ax_core/utils.lua")
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory() as temp_dir:
            config = self.lua.table_from(
                {
                    "version": "v0.0.0-test",
                    "paths": {"runtime_dir": Path(temp_dir).as_posix()},
                    "cycle": {"cycle_length_days": 17, "bootstrap_day": 1},
                    "profile_family": {
                        "mode": "selected_run",
                        "selected_family": "action",
                        "default_family": "action",
                        "allowed_families": ["action"],
                    },
                },
                recursive=True,
            )
            first = calendar["select_next_reboot_profile"](config, profiles, "[SandboxSettings]\n")
            self.assertIsNone(first["active_profile"])
            self.assertEqual(first["prepared_profile"]["day"], 1)
            committed, error, _ = calendar["commit_selection"](config, profiles, first, lua_path(MOD_ROOT), log)
            self.assertTrue(committed, error)
            activated_text = serializer["render_ini"](first["prepared_profile"], schema, utils)
            markerless_text = "\n".join(
                line for line in str(activated_text).splitlines() if "RANDOMDAY_" not in line
            ) + "\n"
            recovered = calendar["select_next_reboot_profile"](config, profiles, markerless_text)
            self.assertEqual(recovered["active_detection"], "settings_fingerprint")
            self.assertEqual(recovered["active_profile"]["id"], first["prepared_profile"]["id"])
            self.assertEqual(recovered["prepared_profile"]["day"], 2)
            self.assertEqual(recovered["status"], "prepared_profile_values_found_without_marker_prepare_next_day")
            second = calendar["select_next_reboot_profile"](config, profiles, activated_text)
            self.assertEqual(second["active_profile"]["day"], 1)
            self.assertEqual(second["active_detection"], "marker")
            self.assertEqual(second["prepared_profile"]["day"], 2)
            self.assertNotEqual(second["active_profile"]["id"], second["prepared_profile"]["id"])
            boot_owner = calendar["create_boot_selection_owner"](config, profiles, activated_text)
            owned_first = boot_owner()
            owned_supervision = boot_owner()
            self.assertEqual(owned_first["prepared_profile"]["id"], owned_supervision["prepared_profile"]["id"])
            self.assertEqual(owned_supervision["prepared_profile"]["day"], 2)
            self.assertEqual(owned_first["rotation_id"], owned_supervision["rotation_id"])
            self.assertEqual(owned_first["run_id"], owned_supervision["run_id"])
            self.assertEqual(owned_first["active_profile"]["id"], owned_supervision["active_profile"]["id"])
            self.assertEqual(owned_supervision["status"], "supervision_reconfirm_prepared_profile_no_advance")

            invalid = calendar["select_next_reboot_profile"](
                config,
                profiles,
                "-- RANDOMDAY_DAY=99\n-- RANDOMDAY_ID=invalid\n-- RANDOMDAY_FAMILY=action\n",
            )
            self.assertIsNone(invalid["active_profile"])
            self.assertIsNone(invalid["active_family"])
            self.assertEqual(invalid["active_detection"], "unresolved")
            self.assertEqual(invalid["prepared_profile"]["id"], first["prepared_profile"]["id"])
            self.assertEqual(invalid["status"], "state_recovery_rewrite_prepared_profile_no_reroll")

    def test_configured_start_day_wraps_and_persists_sequential_order(self) -> None:
        calendar = self.load("Scripts/ax_cycle/calendar.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory() as temp_dir:
            config = self.lua.table_from(
                {
                    "version": "v0.0.0-test",
                    "package_mode": "dedicated_server",
                    "experience": {"resolved_mode": "temporary_dedicated"},
                    "paths": {"runtime_dir": Path(temp_dir).as_posix()},
                    "cycle": {
                        "cycle_length_days": 17,
                        "start_day_mode": "configured",
                        "start_day": 8,
                        "day_progression_mode": "sequential",
                    },
                    "profile_family": {
                        "mode": "selected_run",
                        "selected_family": "action",
                        "default_family": "action",
                        "allowed_families": ["action"],
                    },
                },
                recursive=True,
            )
            first = calendar["select_next_reboot_profile"](config, profiles, "[SandboxSettings]\n")
            order = [int(first["day_order"][index]) for index in range(1, 18)]
            self.assertEqual(order, list(range(8, 18)) + list(range(1, 8)))
            self.assertEqual(first["prepared_profile"]["day"], 8)
            self.assertEqual(first["session_mode"], "temporary_dedicated")
            committed, error, _ = calendar["commit_selection"](config, profiles, first, lua_path(MOD_ROOT), log)
            self.assertTrue(committed, error)
            recovered = calendar["select_next_reboot_profile"](config, profiles, "[SandboxSettings]\n")
            recovered_order = [int(recovered["day_order"][index]) for index in range(1, 18)]
            self.assertEqual(recovered_order, order)
            self.assertEqual(recovered["prepared_profile"]["day"], 8)
            self.assertEqual(recovered["status"], "state_recovery_rewrite_prepared_profile_no_reroll")

    def test_random_start_and_non_repeating_random_days_are_persisted(self) -> None:
        calendar = self.load("Scripts/ax_cycle/calendar.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory() as temp_dir:
            config = self.lua.table_from(
                {
                    "version": "v0.0.0-test",
                    "package_mode": "singleplayer_manual",
                    "experience": {"resolved_mode": "singleplayer_lan"},
                    "paths": {"runtime_dir": Path(temp_dir).as_posix()},
                    "cycle": {
                        "cycle_length_days": 17,
                        "start_day_mode": "random",
                        "start_day": 1,
                        "day_progression_mode": "non_repeating_random",
                    },
                    "profile_family": {
                        "mode": "selected_run",
                        "selected_family": "action",
                        "default_family": "action",
                        "allowed_families": ["action"],
                    },
                },
                recursive=True,
            )
            first = calendar["select_next_reboot_profile"](config, profiles, "[SandboxSettings]\n")
            order = [int(first["day_order"][index]) for index in range(1, 18)]
            self.assertEqual(sorted(order), list(range(1, 18)))
            self.assertEqual(len(set(order)), 17)
            self.assertEqual(first["prepared_profile"]["day"], order[0])
            self.assertEqual(first["session_mode"], "singleplayer_lan")
            committed, error, _ = calendar["commit_selection"](config, profiles, first, lua_path(MOD_ROOT), log)
            self.assertTrue(committed, error)
            recovered = calendar["select_next_reboot_profile"](config, profiles, "[SandboxSettings]\n")
            recovered_order = [int(recovered["day_order"][index]) for index in range(1, 18)]
            self.assertEqual(recovered_order, order)
            self.assertEqual(recovered["prepared_profile"]["day"], order[0])

    def test_persisted_day_order_controls_progression_and_cycle_completion(self) -> None:
        calendar = self.load("Scripts/ax_cycle/calendar.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory() as temp_dir:
            config = self.lua.table_from(
                {
                    "version": "v0.0.0-test",
                    "package_mode": "dedicated_server",
                    "experience": {"resolved_mode": "persistent_dedicated"},
                    "paths": {"runtime_dir": Path(temp_dir).as_posix()},
                    "cycle": {
                        "cycle_length_days": 17,
                        "start_day_mode": "configured",
                        "start_day": 8,
                        "day_progression_mode": "sequential",
                    },
                    "profile_family": {
                        "mode": "selected_run",
                        "selected_family": "action",
                        "default_family": "action",
                        "allowed_families": ["action"],
                    },
                },
                recursive=True,
            )
            bootstrap = calendar["select_next_reboot_profile"](config, profiles, "[SandboxSettings]\n")
            order = [int(bootstrap["day_order"][index]) for index in range(1, 18)]
            committed, error, _ = calendar["commit_selection"](config, profiles, bootstrap, lua_path(MOD_ROOT), log)
            self.assertTrue(committed, error)

            first_profile = bootstrap["prepared_profile"]
            first_marker = (
                f"-- RANDOMDAY_DAY={first_profile['day']}\n"
                f"-- RANDOMDAY_ID={first_profile['id']}\n"
                "-- RANDOMDAY_FAMILY=action\n"
            )
            second = calendar["select_next_reboot_profile"](config, profiles, first_marker)
            self.assertEqual(second["active_profile"]["day"], order[0])
            self.assertEqual(second["prepared_profile"]["day"], order[1])
            self.assertEqual(second["prepared_day_position"], 2)
            self.assertEqual(second["status"], "active_marker_found_family_locked_prepare_next_day")

            final_profile = calendar["profile_by_day"](profiles, order[-1], "action", config)
            final_marker = (
                f"-- RANDOMDAY_DAY={final_profile['day']}\n"
                f"-- RANDOMDAY_ID={final_profile['id']}\n"
                "-- RANDOMDAY_FAMILY=action\n"
            )
            completed = calendar["select_next_reboot_profile"](config, profiles, final_marker)
            self.assertEqual(completed["active_profile"]["day"], order[-1])
            self.assertEqual(completed["prepared_profile"]["day"], 8)
            self.assertEqual(completed["prepared_day_position"], 1)
            self.assertEqual(completed["status"], "active_marker_found_completed_run_prepare_next_unused_family")

    def test_random_day_order_advances_by_persisted_position(self) -> None:
        calendar = self.load("Scripts/ax_cycle/calendar.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory() as temp_dir:
            config = self.lua.table_from(
                {
                    "version": "v0.0.0-test",
                    "package_mode": "dedicated_server",
                    "experience": {"resolved_mode": "temporary_dedicated"},
                    "paths": {"runtime_dir": Path(temp_dir).as_posix()},
                    "cycle": {
                        "cycle_length_days": 17,
                        "start_day_mode": "random",
                        "start_day": 1,
                        "day_progression_mode": "non_repeating_random",
                    },
                    "profile_family": {
                        "mode": "selected_run",
                        "selected_family": "action",
                        "default_family": "action",
                        "allowed_families": ["action"],
                    },
                },
                recursive=True,
            )
            first = calendar["select_next_reboot_profile"](config, profiles, "[SandboxSettings]\n")
            order = [int(first["day_order"][index]) for index in range(1, 18)]
            committed, error, _ = calendar["commit_selection"](config, profiles, first, lua_path(MOD_ROOT), log)
            self.assertTrue(committed, error)
            active = first["prepared_profile"]
            marker = f"-- RANDOMDAY_DAY={active['day']}\n-- RANDOMDAY_ID={active['id']}\n-- RANDOMDAY_FAMILY=action\n"
            next_selection = calendar["select_next_reboot_profile"](config, profiles, marker)
            self.assertEqual(next_selection["prepared_profile"]["day"], order[1])
            next_order = [int(next_selection["day_order"][index]) for index in range(1, 18)]
            self.assertEqual(next_order, order)

    def test_writer_reports_verified_transaction_and_last_good_pair(self) -> None:
        writer = self.load("Scripts/ax_sandbox/writer.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        manager = self.load("Scripts/ax_backup/manager.lua")
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory() as temp_dir:
            temp = Path(temp_dir)
            target = temp / "server" / "SandboxSettings.ini"
            runtime = temp / "runtime"
            config = self.lua.table_from(
                {
                    "package_mode": "dedicated_server",
                    "version": "v0.0.0-test",
                    "paths": {
                        "runtime_dir": runtime.as_posix(),
                        "sandbox_path_override": target.as_posix(),
                        "sandbox_candidates": [],
                        "write_sandbox_mirrors": False,
                        "sandbox_mirror_candidates": [],
                    },
                    "sandbox": {
                        "backup_before_write": True,
                        "restore_last_good_on_failure": True,
                        "force_rewrite_every_supervision_tick": False,
                    },
                },
                recursive=True,
            )
            profile = profiles["families"]["action"]["profiles"][1]
            first = writer["ensure_profile_written"](config, profiles, profile, lua_path(MOD_ROOT), log, "test")
            self.assertTrue(first["ok"])
            self.assertEqual(first["status"], "applied")
            self.assertEqual(first["transaction_status"], "created")
            self.assertEqual(first["replacement_method"], "sibling_rename")
            self.assertTrue(first["pending_readback_verified"])
            self.assertTrue(first["target_readback_verified"])
            self.assertEqual(first["last_good_status"], "updated")
            self.assertTrue(first["rollback_available"])
            self.assertTrue(manager["has_last_good"](config, lua_path(MOD_ROOT)))

            second = writer["ensure_profile_written"](config, profiles, profile, lua_path(MOD_ROOT), log, "test")
            self.assertTrue(second["ok"])
            self.assertTrue(second["already_current"])
            self.assertEqual(second["transaction_status"], "already_current")
            self.assertTrue(second["target_readback_verified"])

    def test_adapter_layout_requires_every_intended_key(self) -> None:
        bridge = self.load("Scripts/ax_external/bridge.lua")
        adapter = self.load("Scripts/ax_external/adapters/lethal_lasers.lua")
        intended = adapter["prepared_profiles"]["standard_safety"]
        keys = sorted(str(key) for key in intended.keys())
        full_text = "\n".join(f"local {key} = 0" for key in keys) + "\n"
        signature, missing = bridge["_test"]["match_signature"](adapter, full_text, intended)
        self.assertIsNotNone(signature)
        self.assertEqual(len(missing), 0)
        partial_text = "\n".join(f"local {key} = 0" for key in keys[:-1]) + "\n"
        signature, missing = bridge["_test"]["match_signature"](adapter, partial_text, intended)
        self.assertIsNone(signature)
        self.assertGreaterEqual(len(missing), 1)

    def test_profile_progression_and_genre_balance_contract(self) -> None:
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        registry = self.load("Scripts/ax_profiles/profile_family_registry.lua")
        genres = set()
        descriptions = set()
        for index in range(1, len(registry["families"]) + 1):
            item = registry["families"][index]
            genres.add(str(item["genre"]))
            descriptions.add(str(item["description"]))
        self.assertEqual(len(genres), 17)
        self.assertEqual(len(descriptions), 17)
        for index in range(1, len(profiles["family_names"]) + 1):
            family_name = profiles["family_names"][index]
            days = profiles["families"][family_name]["profiles"]
            difficulties = {days[day]["settings"]["GameDifficulty"] for day in range(1, 18)}
            spawn_rates = {days[day]["settings"]["EnemySpawnRate"] for day in range(1, 18)}
            self.assertGreaterEqual(len(difficulties), 3, family_name)
            self.assertGreaterEqual(len(spawn_rates), 6, family_name)
            self.assertGreaterEqual(days[12]["settings"]["GameDifficulty"], days[1]["settings"]["GameDifficulty"], family_name)
            self.assertGreaterEqual(days[17]["settings"]["GameDifficulty"], days[1]["settings"]["GameDifficulty"], family_name)
            self.assertLessEqual(days[14]["settings"]["GameDifficulty"], days[12]["settings"]["GameDifficulty"], family_name)
            self.assertNotEqual(days[1]["encounter"]["theme"], days[17]["encounter"]["theme"], family_name)

    def test_writer_package_mode_and_default_target_boundaries(self) -> None:
        writer = self.load("Scripts/ax_sandbox/writer.lua")
        utils = self.load("Scripts/ax_core/utils.lua")
        dedicated = self.lua.table_from(
            {
                "package_mode": "dedicated_server",
                "paths": {
                    "sandbox_path_override": None,
                    "sandbox_candidates": ["Saved/Config/WindowsServer/SandboxSettings.ini"],
                    "write_sandbox_mirrors": True,
                    "sandbox_mirror_candidates": [],
                },
            },
            recursive=True,
        )
        targets = writer["resolve_all_sandbox_targets"](dedicated, utils)
        self.assertEqual(len(targets), 1)
        self.assertEqual(targets[1], "Saved/Config/WindowsServer/SandboxSettings.ini")
        singleplayer = self.lua.table_from({"package_mode": "singleplayer_manual"}, recursive=True)
        allowed = writer["_test"]["validate_target"](
            singleplayer,
            utils,
            lua_path(MOD_ROOT / "runtime/singleplayer_manual/SandboxSettings.ini"),
            lua_path(MOD_ROOT),
        )
        self.assertTrue(allowed if not isinstance(allowed, tuple) else allowed[0])
        refused = writer["_test"]["validate_target"](
            singleplayer,
            utils,
            lua_path(MOD_ROOT / "runtime/singleplayer_manual/../../outside.ini"),
            lua_path(MOD_ROOT),
        )
        self.assertIsInstance(refused, tuple)
        self.assertFalse(refused[0])

    def test_writer_reports_atomic_readback_and_recovers_interrupted_sidecars(self) -> None:
        writer = self.load("Scripts/ax_sandbox/writer.lua")
        manager = self.load("Scripts/ax_backup/manager.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        profile = profiles["families"]["action"]["profiles"][1]
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        with tempfile.TemporaryDirectory(dir=ROOT / ".tmp") as temp_dir:
            temp = Path(temp_dir)
            target = temp / "server" / "SandboxSettings.ini"
            config = self.lua.table_from(
                {
                    "package_mode": "dedicated_server",
                    "paths": {
                        "runtime_dir": (temp / "runtime").as_posix(),
                        "sandbox_path_override": target.as_posix(),
                        "sandbox_candidates": [target.as_posix()],
                        "write_sandbox_mirrors": False,
                        "sandbox_mirror_candidates": [],
                    },
                    "sandbox": {"force_rewrite_every_supervision_tick": False},
                },
                recursive=True,
            )
            first = writer["ensure_profile_written"](
                config, profiles, profile, lua_path(MOD_ROOT), log, "test"
            )
            self.assertTrue(first["ok"], first["error"])
            self.assertEqual(first["status"], "applied")
            self.assertEqual(first["replacement_method"], "sibling_rename")
            self.assertTrue(first["pending_readback_verified"])
            self.assertTrue(first["target_readback_verified"])
            self.assertTrue(first["rollback_available"])
            self.assertTrue(target.is_file())
            pair_valid = manager["has_last_good"](config, lua_path(MOD_ROOT))
            self.assertTrue(pair_valid if not isinstance(pair_valid, tuple) else pair_valid[0])

            rollback = Path(target.as_posix() + ".randomday.rollback")
            pending = Path(target.as_posix() + ".randomday.pending")
            target.replace(rollback)
            pending.write_text("stale partial write", encoding="utf-8")
            recovered = writer["ensure_profile_written"](
                config, profiles, profile, lua_path(MOD_ROOT), log, "supervision"
            )
            self.assertTrue(recovered["ok"], recovered["error"])
            self.assertTrue(recovered["recovered_interrupted_transaction"])
            self.assertTrue(recovered["pending_readback_verified"])
            self.assertTrue(recovered["target_readback_verified"])
            self.assertTrue(target.is_file())
            self.assertFalse(rollback.exists())
            self.assertFalse(pending.exists())

    def test_export_schema_is_stable_and_does_not_leak_paths(self) -> None:
        exporter = self.load("Scripts/ax_web/export.lua")
        utils = self.load("Scripts/ax_core/utils.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        active = profiles["families"]["action"]["profiles"][1]
        prepared = profiles["families"]["action"]["profiles"][2]
        selected = self.lua.table_from(
            {
                "active_profile": active,
                "prepared_profile": prepared,
                "active_family": "action",
                "prepared_family": "action",
                "family_mode": "selected_run",
                "rotation_id": "rotation_fixture",
                "run_id": "run_fixture",
                "remaining_families": ["survival"],
                "completed_families": [],
                "selected_at": "2026-01-01 00:00:00",
            },
            recursive=True,
        )
        config = self.lua.table_from(
            {
                "version": "v0.0.0-test",
                "package_mode": "dedicated_server",
                "paths": {"runtime_dir": "Z" + ":/operator-fixture/RandomDay/runtime"},
                "world_scope": {
                    "enabled": True,
                    "affect_open_worlds": True,
                    "unknown_world_policy": "allow",
                    "protected_worlds": ["Private World Name"],
                },
            },
            recursive=True,
        )
        write_result = self.lua.table_from(
            {
                "ok": True,
                "status": "applied",
                "state_commit_ok": True,
                "sandbox_path": "Z" + ":/operator-fixture/server/SandboxSettings.ini",
                "hash": "fixturehash",
                "rollback_status": "discarded_after_success",
            },
            recursive=True,
        )
        external = self.lua.table_from({"status": "external_mods_processed", "adapters": []}, recursive=True)
        text = exporter["_test"]["selected_to_json"](
            config, utils, selected, write_result, "prepared_for_next_reboot", external, lua_path(MOD_ROOT)
        )
        data = json.loads(text)
        expected_fields = {
            "schema_version", "status_schema", "dictionary_version", "mod", "version", "package_mode", "mode", "profile_system",
            "session_mode", "start_day_mode", "configured_start_day", "day_progression_mode", "day_order",
            "prepared_day_position", "family_locked_until_cycle_complete",
            "family_selection_mode", "rotation_id", "run_id", "active_family", "prepared_next_family",
            "selection_status", "active_profile_detection",
            "profile_status", "prepared_ready", "state_commit_ok", "state_commit_error_code",
            "sandbox_transaction_status", "sandbox_rollback_status", "active_cycle_day", "active_profile_id",
            "active_display_name", "active_profile_translation", "prepared_next_cycle_day", "prepared_next_profile_id",
            "prepared_next_display_name", "prepared_profile_translation", "prepared_next_message_line", "family_locked_until_day_17",
            "remaining_families_count", "remaining_families", "completed_families",
            "prepared_next_encounter_profile", "prepared_next_encounter_tier", "prepared_next_encounter_theme",
            "prepared_next_mixed_encounter_chance", "world_scope_enabled", "world_scope_affect_open_worlds",
            "world_scope_unknown_policy", "world_scope_protected_world_count", "prepared_next_join_message",
            "message_preview", "selected_at", "sandbox_target", "manual_copy_required", "hash", "external_mods_status",
            "external_adapters", "restart_required_for_prepared_profile", "notes",
        }
        self.assertEqual(set(data), expected_fields)
        self.assertEqual(data["schema_version"], 2)
        self.assertEqual(data["active_profile_translation"]["profile_id"], data["active_profile_id"])
        self.assertEqual(data["prepared_profile_translation"]["profile_id"], data["prepared_next_profile_id"])
        self.assertNotEqual(data["active_profile_id"], data["prepared_next_profile_id"])
        self.assert_bounded(data["message_preview"], 4)
        self.assertIn("not active yet", data["prepared_next_join_message"].lower())
        self.assertEqual(data["world_scope_protected_world_count"], 1)
        self.assertNotIn("sandbox_path", data)
        self.assertNotIn("Z" + ":/operator-fixture", text)
        self.assertNotIn("Private World Name", text)

    def test_runtime_status_files_use_separate_translation_output(self) -> None:
        runtime_status = self.load("Scripts/ax_runtime/status.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        active = profiles["families"]["action"]["profiles"][1]
        prepared = profiles["families"]["action"]["profiles"][2]
        selected = self.lua.table_from(
            {
                "active_profile": active,
                "prepared_profile": prepared,
                "status": "active_marker_found_family_locked_prepare_next_day",
                "active_detection": "marker",
                "rotation_id": "rotation_fixture",
                "run_id": "run_fixture",
            },
            recursive=True,
        )
        write_result = self.lua.table_from(
            {
                "ok": True,
                "changed": True,
                "status": "applied",
                "state_commit_ok": True,
                "hash": "fixturehash",
                "rollback_status": "discarded_after_success",
                "pending_readback_verified": True,
                "target_readback_verified": True,
            },
            recursive=True,
        )
        external = self.lua.table_from({"status": "external_mods_disabled", "adapters": []}, recursive=True)
        log = self.lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})
        tmp_root = ROOT / ".tmp"
        tmp_root.mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(prefix="runtime_status_", dir=tmp_root) as temp_dir:
            config = self.lua.table_from(
                {
                    "version": "v0.0.0-test",
                    "package_mode": "dedicated_server",
                    "paths": {"runtime_dir": Path(temp_dir).as_posix()},
                    "player_message": {"max_line_chars": 42, "max_join_lines": 4},
                    "world_scope": {
                        "enabled": True,
                        "affect_open_worlds": True,
                        "unknown_world_policy": "allow",
                        "protected_worlds": ["Operator Fixture"],
                    },
                },
                recursive=True,
            )
            snapshot = runtime_status["write_current"](
                config, profiles, selected, write_result, external, "startup", lua_path(MOD_ROOT), log
            )
            status_path = Path(temp_dir) / "current" / "randomday_status.json"
            dictionary_path = Path(temp_dir) / "current" / "randomday_dictionary.json"
            preview_path = Path(temp_dir) / "current" / "player_message_preview.txt"
            self.assertTrue(status_path.is_file())
            self.assertTrue(dictionary_path.is_file())
            self.assertTrue(preview_path.is_file())
            exported = json.loads(status_path.read_text(encoding="utf-8"))
            exported_dictionary = json.loads(dictionary_path.read_text(encoding="utf-8"))
            self.assertEqual(exported["active_profile_translation"]["profile_id"], exported["active_profile_id"])
            self.assertEqual(exported["prepared_profile_translation"]["profile_id"], exported["prepared_next_profile_id"])
            self.assertEqual(exported["profile_intensity"], exported["active_profile_translation"]["overall"]["label"])
            self.assertEqual(exported["prepared_profile_intensity"], exported["prepared_profile_translation"]["overall"]["label"])
            self.assertNotEqual(exported["active_profile_id"], exported["prepared_next_profile_id"])
            self.assert_bounded(exported["message_preview"], 4)
            self.assertEqual(exported_dictionary["schema"], "randomday_runtime_dictionary_v2")
            self.assertEqual(len(exported_dictionary["settings"]), 46)
            self.assertNotIn("sandbox_path", exported)
            self.assertNotIn(Path(temp_dir).as_posix(), status_path.read_text(encoding="utf-8"))
            self.assertEqual(snapshot["active_profile_id"], active["id"])

    def test_adapter_failure_exports_safe_operator_recovery_diagnostics(self) -> None:
        exporter = self.load("Scripts/ax_web/export.lua")
        utils = self.load("Scripts/ax_core/utils.lua")
        profiles = self.load("Scripts/ax_profiles/randomday_17.lua")
        active = profiles["families"]["action"]["profiles"][1]
        prepared = profiles["families"]["action"]["profiles"][2]
        selected = self.lua.table_from(
            {
                "active_profile": active,
                "prepared_profile": prepared,
                "status": "active_marker_found_family_locked_prepare_next_day",
                "rotation_id": "rotation_fixture",
                "run_id": "run_fixture",
                "remaining_families": [],
                "completed_families": [],
            },
            recursive=True,
        )
        runtime_root = "Z" + ":/operator-fixture/RandomDay/runtime"
        failed_path = "Z" + ":/operator-fixture/Mods/DynamicSpawns/Scripts/SharedData.lua"
        backup_dir = runtime_root + "/backups/external_fixture"
        external = self.lua.table_from(
            {
                "status": "external_adapter_failed",
                "adapters": [
                    {
                        "id": "dynamic_spawns",
                        "status": "rollback_failed",
                        "ok": False,
                        "reason": "transaction failed",
                        "error": failed_path + ": access denied",
                        "missing_keys": ["example_public_key"],
                        "path": failed_path,
                        "failed_path": failed_path,
                        "backup_dir": backup_dir,
                        "transaction_status": "promotion_failed",
                        "transaction_had_original": True,
                        "transaction_rollback_status": "restore_failed",
                        "transaction_rollback_error": failed_path + ".randomday.rollback: access denied",
                        "rollback_error": failed_path + ": restore denied",
                        "rollback_attempted_count": 1,
                        "rollback_steps": failed_path + "=restore_failed; " + "Z" + ":/operator-fixture/Mods/Other Mod/Settings.lua=already_restored",
                        "mutation_started": True,
                    }
                ],
            },
            recursive=True,
        )
        config = self.lua.table_from(
            {
                "version": "v0.0.0-test",
                "package_mode": "dedicated_server",
                "paths": {"runtime_dir": runtime_root},
                "world_scope": {"enabled": True, "protected_worlds": []},
            },
            recursive=True,
        )
        write_result = self.lua.table_from(
            {"ok": True, "status": "applied", "state_commit_ok": True, "rollback_status": "not_needed"},
            recursive=True,
        )
        text = exporter["_test"]["selected_to_json"](
            config, utils, selected, write_result, "prepared_for_next_reboot", external, lua_path(MOD_ROOT)
        )
        exported = json.loads(text)
        self.assertEqual(len(exported["external_adapters"]), 1)
        diagnostic = exported["external_adapters"][0]
        self.assertEqual(diagnostic["status"], "rollback_failed")
        self.assertEqual(diagnostic["failed_path"], "target/SharedData.lua")
        self.assertEqual(diagnostic["backup_reference"], "runtime/backups/external_fixture")
        self.assertEqual(diagnostic["transaction_status"], "promotion_failed")
        self.assertEqual(diagnostic["transaction_rollback_status"], "restore_failed")
        self.assertEqual(diagnostic["rollback_status"], "restore_failed")
        self.assertEqual(diagnostic["rollback_attempted_count"], 1)
        self.assertIn("restore_failed", diagnostic["rollback_steps"])
        self.assertIn("target/Settings.lua=already_restored", diagnostic["rollback_steps"])
        self.assertIn("access denied", diagnostic["error"])
        self.assertEqual(diagnostic["missing_keys"], ["example_public_key"])
        self.assertIn("target/SharedData.lua", diagnostic["rollback_error"])
        self.assertNotIn("Z" + ":/operator-fixture", text)
        self.assertNotIn("backup_dir", diagnostic)

    def test_adapter_diagnostics_are_portable_bounded_and_redacted(self) -> None:
        runtime_status = self.load("Scripts/ax_runtime/status.lua")
        utils = self.load("Scripts/ax_core/utils.lua")
        config = self.lua.table_from(
            {"paths": {"runtime_dir": "Z" + ":/runtime-fixture"}},
            recursive=True,
        )
        external = self.lua.table_from(
            {
                "adapters": [
                    {
                        "id": "fixture_adapter",
                        "status": "rollback_failed",
                        "ok": False,
                        "reason": "failure at " + "C" + ":/Operators/Private Folder/adapter.lua; " + ("x" * 800),
                        "rollback_error": "restore denied at /srv/private folder/adapter.lua",
                        "rollback_steps": "/srv/private folder/a.lua=restore_failed; " + "C" + ":/Operators/Private Folder/b.lua=restore_failed",
                        "transaction_rollback_status": "restore_failed",
                    }
                ]
            },
            recursive=True,
        )
        exported = runtime_status["public_adapter_results"](
            config, external, lua_path(MOD_ROOT), utils
        )[1]
        self.assertFalse(exported["ok"])
        self.assertEqual(exported["status"], "rollback_failed")
        self.assertEqual(exported["rollback_status"], "restore_failed")
        self.assertLessEqual(len(str(exported["reason"]).encode("utf-8")), 512)
        serialized = runtime_status["json_encode"](exported)
        for private_fragment in ("Private Folder", "/srv/private", "C" + ":/Operators"):
            self.assertNotIn(private_fragment, serialized)
        self.assertIn("[redacted-path]", serialized)

    def test_adapter_integration_all_outcomes_and_layout_evidence(self) -> None:
        adapter_paths = {
            "lethal_lasers": "LethalLasers/Scripts/main.lua",
            "ante_up": "AnteUp/scripts/Settings.lua",
            "dynamic_spawns": "DynamicSpawns/Scripts/SharedData.lua",
            "encounter_director": "DynamicSpawns/Scripts/SharedData.lua",
        }
        with tempfile.TemporaryDirectory() as temp_dir:
            temp = Path(temp_dir)
            copied_root = temp / "Mods" / "RandomDay"
            copied_root.parent.mkdir(parents=True)
            shutil.copytree(MOD_ROOT, copied_root)
            lua = LuaRuntime(unpack_returned_tuples=True)
            lua.execute(f"_G.RANDOMDAY_MOD_ROOT = {json.dumps(lua_path(copied_root))}")

            def load(relative: str):
                return lua.execute(f"return dofile({json.dumps(lua_path(copied_root / relative))})")

            bridge = load("Scripts/ax_external/bridge.lua")
            profiles = load("Scripts/ax_profiles/randomday_17.lua")
            profile = profiles["families"]["action"]["profiles"][1]
            log = lua.table_from({"info": lambda *_: None, "warn": lambda *_: None, "error": lambda *_: None})

            def config_for(adapter_id: str, optional_by_default: bool = True):
                return lua.table_from(
                    {
                        "paths": {"runtime_dir": (temp / "runtime").as_posix()},
                        "world_scope": {
                            "enabled": True,
                            "affect_open_worlds": True,
                            "unknown_world_policy": "allow",
                            "log_scope_decisions": True,
                            "protected_worlds": [],
                        },
                        "external_mods": {
                            "enabled": True,
                            "optional_by_default": optional_by_default,
                            "patch_only_existing_keys": True,
                            "backup_before_write": True,
                            "adapters": [adapter_id],
                        },
                    },
                    recursive=True,
                )

            def prepare_fixture(adapter_id: str) -> tuple[Path, str]:
                adapter = load(f"Scripts/ax_external/adapters/{adapter_id}.lua")
                profile_name = profile["external_profiles"][adapter_id]
                intended = adapter["prepared_profiles"][profile_name]
                values = {str(key): intended[key] for key in intended.keys()}
                if adapter_id == "dynamic_spawns":
                    values["bossSpawnWarnings"] = False
                    values["plainStartMessage"] = True
                fixture = temp / "Mods" / adapter_paths[adapter_id]
                fixture.parent.mkdir(parents=True, exist_ok=True)
                lines = []
                for key in sorted(values):
                    value = values[key]
                    if isinstance(value, bool):
                        old = not value
                    elif isinstance(value, (int, float)):
                        old = value + 1
                    else:
                        old = "fixture_old_value"
                    lines.append(f"local {key} = {lua_literal(old)}")
                original = "\n".join(lines) + "\n"
                fixture.write_text(original, encoding="utf-8", newline="\n")
                if adapter_id == "dynamic_spawns":
                    slash = "\\"
                    (fixture.parent / "PlayerTracker.lua").write_text(
                        "\n".join(
                            [
                                'local startMsg = "OLD START' + slash,
                                'continued with \\"quoted\\" text."',
                                'local plainStartMsg = "OLD PLAIN' + slash,
                                'continued."',
                                "local jokeMsgs = {",
                                '    old = { chance = 1, text = "OLD NOTE" },',
                                "}",
                                "",
                            ]
                        ),
                        encoding="utf-8",
                        newline="\n",
                    )
                    (fixture.parent / "SpecialSpawns.lua").write_text(
                        "\n".join(
                            [
                                "if SharedData.stormSpawnWarnings then",
                                '    local warningMessage = "HOSTILE ACTIVITY' + slash,
                                'Security \\"heard\\" you."',
                                "    if factionTable == WhoSpawnsWhere.PortalStormSpawns then",
                                '        warningMessage = "PORTAL WEATHER' + slash,
                                'Security heard you."',
                                "    elseif factionTable == WhoSpawnsWhere.OrderBreachSpawns then",
                                '        warningMessage = "BREACH NOTICE' + slash,
                                'Security heard you."',
                                "    elseif factionTable == WhoSpawnsWhere.GKAmbushSpawns then",
                                '        warningMessage = "INSPECTION' + slash,
                                'Security heard you."',
                                "    end",
                                "end",
                                "",
                            ]
                        ),
                        encoding="utf-8",
                        newline="\n",
                    )
                return fixture, original

            observed_statuses = set()
            for adapter_id in adapter_paths:
                fixture, _ = prepare_fixture(adapter_id)
                result = bridge["apply_profile"](config_for(adapter_id), profile, lua_path(copied_root), log)
                outcome = result["adapters"][1]
                self.assertEqual(outcome["status"], "applied", adapter_id)
                self.assertEqual(result["status"], "external_mods_processed", adapter_id)
                self.assertEqual(outcome["version_evidence"], "layout_fixture_only")
                self.assertFalse(outcome["tested_version"])
                if adapter_id == "dynamic_spawns":
                    self.assertEqual(outcome["config_patch"]["file"], "SharedData.lua")
                    self.assertEqual(outcome["config_patch"]["status"], "applied")
                    self.assertEqual(outcome["message_patch"]["status"], "applied")
                    self.assertEqual(outcome["message_patch"]["files"][1]["file"], "PlayerTracker.lua")
                    self.assertEqual(outcome["message_patch"]["files"][1]["status"], "applied")
                    self.assertEqual(outcome["message_patch"]["files"][2]["file"], "SpecialSpawns.lua")
                    self.assertEqual(outcome["message_patch"]["files"][2]["status"], "applied")
                    self.assertEqual(outcome["message_patch"]["files"][2]["targets"], 4)
                    patched_special = (fixture.parent / "SpecialSpawns.lua").read_text(encoding="utf-8")
                    self.assertNotIn("security heard you", patched_special.lower())
                observed_statuses.add(outcome["status"])
                second = bridge["apply_profile"](config_for(adapter_id), profile, lua_path(copied_root), log)
                self.assertEqual(second["adapters"][1]["status"], "already_current", adapter_id)
                self.assertEqual(second["status"], "external_mods_processed", adapter_id)
                if adapter_id == "dynamic_spawns":
                    current = second["adapters"][1]
                    self.assertEqual(current["config_patch"]["status"], "already_current")
                    self.assertEqual(current["message_patch"]["status"], "already_current")
                    self.assertEqual(current["message_patch"]["files"][1]["status"], "already_current")
                    self.assertEqual(current["message_patch"]["files"][2]["status"], "already_current")
                    (fixture.parent / "SpecialSpawns.lua").write_text(
                        'local warningMessage = "unterminated warning\n',
                        encoding="utf-8",
                        newline="\n",
                    )
                    partial = bridge["apply_profile"](config_for(adapter_id), profile, lua_path(copied_root), log)
                    partial_outcome = partial["adapters"][1]
                    self.assertTrue(partial["ok"])
                    self.assertEqual(partial["status"], "external_mods_partial")
                    self.assertEqual(partial_outcome["status"], "partial")
                    self.assertEqual(partial_outcome["config_patch"]["status"], "already_current")
                    self.assertEqual(partial_outcome["message_patch"]["status"], "failed")
                    self.assertEqual(partial_outcome["message_patch"]["files"][1]["status"], "already_current")
                    self.assertEqual(partial_outcome["message_patch"]["files"][2]["status"], "failed")
                    observed_statuses.add("partial")
                observed_statuses.add("already_current")
                shutil.rmtree(fixture.parents[1] if adapter_id != "ante_up" else fixture.parents[1])
                missing = bridge["apply_profile"](config_for(adapter_id), profile, lua_path(copied_root), log)
                self.assertEqual(missing["adapters"][1]["status"], "not_installed", adapter_id)
                self.assertTrue(missing["ok"], adapter_id)
                self.assertEqual(missing["status"], "external_mods_partial", adapter_id)
                observed_statuses.add("not_installed")
                fixture.parent.mkdir(parents=True, exist_ok=True)
                fixture.write_text("local incompatible_only = true\n", encoding="utf-8")
                incompatible = bridge["apply_profile"](config_for(adapter_id), profile, lua_path(copied_root), log)
                self.assertEqual(incompatible["adapters"][1]["status"], "skipped_incompatible", adapter_id)
                self.assertTrue(incompatible["ok"], adapter_id)
                self.assertEqual(incompatible["status"], "external_mods_partial", adapter_id)
                observed_statuses.add("skipped_incompatible")
                shutil.rmtree(fixture.parents[1] if adapter_id != "ante_up" else fixture.parents[1])

            fixture, original = prepare_fixture("lethal_lasers")
            target = fixture.as_posix()
            lua.execute(
                f'''_G.__rd_target={json.dumps(target)}; _G.__rd_open=io.open;
                io.open=function(path, mode)
                    if path == _G.__rd_target .. ".randomday.pending" and tostring(mode):find("w") then return nil, "injected pending write failure" end
                    return _G.__rd_open(path, mode)
                end'''
            )
            failed = bridge["apply_profile"](config_for("lethal_lasers"), profile, lua_path(copied_root), log)
            lua.execute("io.open=_G.__rd_open")
            self.assertEqual(failed["adapters"][1]["status"], "failed_rolled_back")
            self.assertFalse(failed["adapters"][1]["ok"])
            self.assertTrue(failed["ok"])
            self.assertEqual(failed["status"], "external_mods_partial")
            self.assertFalse(failed["adapters"][1]["mutation_started"])
            self.assertEqual(fixture.read_text(encoding="utf-8"), original)
            observed_statuses.add("failed_rolled_back")

            fixture, original = prepare_fixture("lethal_lasers")
            target = fixture.as_posix()
            lua.execute(
                f'''_G.__rd_target={json.dumps(target)}; _G.__rd_open=io.open; _G.__rd_rename=os.rename; _G.__rd_deny_read=false;
                os.rename=function(src, dst)
                    local ok, err = _G.__rd_rename(src, dst)
                    if ok and src == _G.__rd_target .. ".randomday.pending" and dst == _G.__rd_target then _G.__rd_deny_read=true end
                    return ok, err
                end
                io.open=function(path, mode)
                    if _G.__rd_deny_read and path == _G.__rd_target and tostring(mode):find("r") then _G.__rd_deny_read=false; return nil, "injected readback failure" end
                    return _G.__rd_open(path, mode)
                end'''
            )
            readback = bridge["apply_profile"](config_for("lethal_lasers"), profile, lua_path(copied_root), log)
            lua.execute("io.open=_G.__rd_open; os.rename=_G.__rd_rename")
            self.assertEqual(readback["adapters"][1]["status"], "failed_rolled_back")
            self.assertTrue(readback["ok"])
            self.assertEqual(readback["status"], "external_mods_partial")
            self.assertEqual(fixture.read_text(encoding="utf-8"), original)

            fixture, _ = prepare_fixture("lethal_lasers")
            target = fixture.as_posix()
            lua.execute(
                f'''_G.__rd_target={json.dumps(target)}; _G.__rd_open=io.open; _G.__rd_rename=os.rename; _G.__rd_remove=os.remove; _G.__rd_fail_restore=false;
                os.rename=function(src, dst)
                    if src == _G.__rd_target .. ".randomday.pending" and dst == _G.__rd_target then
                        _G.__rd_fail_restore=true
                        local rejected=_G.__rd_open(_G.__rd_target, "wb")
                        rejected:write("injected rejected replacement")
                        rejected:close()
                        return nil, "injected promotion failure"
                    end
                    return _G.__rd_rename(src, dst)
                end
                os.remove=function(path)
                    if _G.__rd_fail_restore and path == _G.__rd_target then return nil, "injected rejected-target cleanup failure" end
                    if _G.__rd_fail_restore and path == _G.__rd_target .. ".randomday.rollback" then return nil, "injected transaction-sidecar cleanup failure" end
                    return _G.__rd_remove(path)
                end'''
            )
            rollback = bridge["apply_profile"](config_for("lethal_lasers"), profile, lua_path(copied_root), log)
            lua.execute("io.open=_G.__rd_open; os.rename=_G.__rd_rename; os.remove=_G.__rd_remove")
            rollback_outcome = rollback["adapters"][1]
            self.assertFalse(rollback_outcome["ok"])
            self.assertFalse(rollback["ok"])
            self.assertEqual(rollback["status"], "external_adapter_failed")
            self.assertEqual(
                rollback_outcome["status"],
                "rollback_failed",
                {
                    key: rollback_outcome[key]
                    for key in (
                        "reason",
                        "transaction_status",
                        "transaction_had_original",
                        "transaction_rollback_status",
                        "transaction_rollback_error",
                        "error",
                        "rollback_error",
                        "rollback_attempted_count",
                        "rollback_steps",
                        "failed_path",
                        "backup_dir",
                    )
                },
            )
            observed_statuses.add("rollback_failed")

            shutil.rmtree(temp / "Mods" / "LethalLasers", ignore_errors=True)
            required_adapter_path = copied_root / "Scripts" / "ax_external" / "adapters" / "lethal_lasers.lua"
            required_source = required_adapter_path.read_text(encoding="utf-8")
            self.assertIn("required = false", required_source)
            required_adapter_path.write_text(
                required_source.replace("required = false", "required = true", 1),
                encoding="utf-8",
                newline="\n",
            )
            required_missing = bridge["apply_profile"](
                config_for("lethal_lasers", optional_by_default=False),
                profile,
                lua_path(copied_root),
                log,
            )
            self.assertFalse(required_missing["ok"])
            self.assertEqual(required_missing["status"], "external_adapter_failed")
            self.assertTrue(required_missing["adapters"][1]["required"])
            self.assertEqual(required_missing["adapters"][1]["status"], "not_installed")
            self.assertEqual(
                observed_statuses,
                {"applied", "already_current", "not_installed", "skipped_incompatible", "failed_rolled_back", "rollback_failed", "partial"},
            )


if __name__ == "__main__":
    unittest.main()
