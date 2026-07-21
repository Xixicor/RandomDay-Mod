-- RandomDay public source
-- Module: RandomDay/Scripts/ax_core/log.lua
-- Ownership/Purpose: RandomDay public module; Level-filtered RandomDay logging
-- Public contract: caller=all runtime modules; inputs=logging.level and messages; outputs=[RandomDay] UE4SS log lines
-- Side effects: appends through UE4SS print
-- Failure/Recovery: failures=unsupported level falls back to info filtering; recovery states=debug; info; warn; error
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-core-log

local M = { level = "info" }

local levels = { debug = 1, info = 2, warn = 3, error = 4 }

function M.configure(cfg)
    if cfg and cfg.level then M.level = cfg.level end
end

local function should(level)
    return (levels[level] or 2) >= (levels[M.level] or 2)
end

local function emit(level, msg)
    if should(level) then
        print("[RandomDay] [" .. string.upper(level) .. "] " .. tostring(msg) .. "\n")
    end
end

function M.debug(msg) emit("debug", msg) end
function M.info(msg) emit("info", msg) end
function M.warn(msg) emit("warn", msg) end
function M.error(msg) emit("error", msg) end

return M
