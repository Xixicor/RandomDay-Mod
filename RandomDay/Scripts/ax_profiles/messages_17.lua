local M = {}

local function val(v, fallback)
    if v == nil or v == "" then return fallback end
    return tostring(v)
end

local function compact_name(name)
    name = tostring(name or "RandomDay")
    name = name:gsub("Authorization", "Auth")
    name = name:gsub("Department", "Dept")
    name = name:gsub("Performance", "Perf")
    name = name:gsub("Experimental", "Exp")
    name = name:gsub("Orientation", "Orient")
    name = name:gsub("Compliance", "Comply")
    name = name:gsub("Security", "Sec")
    name = name:gsub("End%-of%-Rotation", "End Rotation")
    return name
end

local function dline(a, b, c)
    if c and c ~= "" then return tostring(a) .. "\n" .. tostring(b) .. "\n" .. tostring(c) end
    return tostring(a) .. "\n" .. tostring(b)
end

local family_notes = {
    action = { risk="noise with benefits", dept="Action Desk", verb="Fire", hostile="Contact authorized. Paperwork delayed.", portal="A portal joined the firefight.", order="Order breach entered loud mode.", gatekeeper="A high-value problem arrived." },
    survival = { risk="expensive mistakes", dept="Survival Office", verb="Hide", hostile="Threats are fewer and worse.", portal="Avoid the leak unless paid well.", order="Patrol detected. Survive the memo.", gatekeeper="The apex review is not negotiable." },
    stealth = { risk="being noticed", dept="Quiet Compliance", verb="Whisper", hostile="The facility heard something.", portal="Reality opened quietly.", order="Silent sweep in progress.", gatekeeper="Inspection is listening." },
    horde = { risk="headcount fraud", dept="Crowd Control", verb="Count", hostile="There are too many. Again.", portal="The doorway overdelivered.", order="Backup requested backup.", gatekeeper="A large mistake is walking." },
    boss_hunt = { risk="trophy liability", dept="Apex Problems", verb="Track", hostile="High-value target activity.", portal="Something worth regretting arrived.", order="Elite breach authorized.", gatekeeper="Trophy class inspection inbound." },
    scavenger = { risk="profitable regret", dept="Supply Chain", verb="Loot", hostile="Loot attracted witnesses.", portal="A supply route opened sideways.", order="Receipt check has weapons.", gatekeeper="Inventory audit with teeth." },
    builder = { risk="zoning consequences", dept="Construction Hope", verb="Build", hostile="Your wall has critics.", portal="The floor plan leaked.", order="Permit breach detected.", gatekeeper="Inspector arrived without a clipboard." },
    expedition = { risk="route enthusiasm", dept="Travel Advisory", verb="Move", hostile="Route hazard confirmed.", portal="Shortcut is arguing back.", order="Checkpoint active.", gatekeeper="Travel inspection inbound." },
    security_lockdown = { risk="procedure", dept="Security Desk", verb="Comply", hostile="Security has opinions.", portal="Alarm-state portal event.", order="Lockdown breach authorized.", gatekeeper="Badge inspection escalated." },
    biohazard = { risk="wet litigation", dept="Sanitation Legal", verb="Decontaminate", hostile="Contamination has friends.", portal="The drain opened elsewhere.", order="Biosecurity breach active.", gatekeeper="Hygiene inspector inbound." },
    anteverse = { risk="dimensional side effects", dept="Dimensional HR", verb="Stabilize", hostile="Variant pressure rising.", portal="Anteverse event approved by nobody.", order="Cross-dimensional breach registered.", gatekeeper="Reality inspector inbound." },
    nightmare = { risk="quiet dread", dept="Lights Out Office", verb="Listen", hostile="The dark hired backup.", portal="A door opened in the wrong quiet.", order="Night breach whispering.", gatekeeper="Something important arrived softly." },
    weathered = { risk="indoor weather", dept="Weather Apology", verb="Shelter", hostile="Forecast contains claws.", portal="Spatial drizzle detected.", order="Storm breach in progress.", gatekeeper="Climate inspector inbound." },
    precision = { risk="line of sight", dept="Accuracy Audit", verb="Duck", hostile="Aiming committee active.", portal="Incoming angles irregular.", order="Precision breach with cover denial.", gatekeeper="Audit found your outline." },
    logistics = { risk="pocket judgment", dept="Inventory Bureau", verb="Carry", hostile="The supply chain is armed.", portal="Inventory opened sideways.", order="Logistics breach detected.", gatekeeper="Receipt inspector inbound." },
    experimental = { risk="documented nonsense", dept="Variable Office", verb="Improvise", hostile="The variable chose violence.", portal="Experiment leaked sideways.", order="Experimental breach, statistically rude.", gatekeeper="Control group escaped." },
    compliance_test = { risk="final exam conditions", dept="Compliance Desk", verb="Survive", hostile="The checklist is armed.", portal="Final portal practical.", order="End-cycle breach active.", gatekeeper="Compliance has arrived." },
}

local function build_jokes(profile, note)
    local name = compact_name(profile and profile.display_name or "RandomDay")
    return {
        dline("RandomDay", name .. ": " .. note.risk),
        dline("RandomDay", note.dept .. " denies involvement."),
        dline("RandomDay", note.verb .. ". Explain later."),
        dline("RandomDay", "Theme has teeth."),
        dline("RandomDay", "Full sheet: studio.speclang.pro"),
    }
end

function M.get(profile)
    local fam = tostring(profile and profile.family or "action")
    local note = family_notes[fam] or family_notes.action
    local day = tonumber(profile and profile.day or 0) or 0
    local title = compact_name(profile and profile.display_name or "Facility Condition")
    local label = val(profile and profile.family_label, fam:upper())
    local line = val(profile and profile.message_line, "Operating rules changed.")
    local join = dline("RandomDay", label .. " D" .. tostring(day) .. "/17 - " .. title, line)
    return {
        join = join,
        jokes = build_jokes(profile, note),
        warnings = {
            hostile = dline("HOSTILE", title, note.hostile),
            portal = dline("PORTAL", title, note.portal),
            order = dline("BREACH", title, note.order),
            gatekeeper = dline("INSPECTION", title, note.gatekeeper),
        },
        criticality = "yellow",
        experience = val(profile and profile.experience, "special conditions"),
    }
end

return M
