--  ╔═════════════════════════════════════╗
--  ║ » Simply Spawning Cooldown Module   ║
--  ║ » Author: YohSambre                 ║
--  ║ » Serverside file                   ║
--  ╚═════════════════════════════════════╝
print("NGH - Simply Spawning Cooldown Module loaded!")
-- I'm going to be hated for this huho!
local delay = {}

local cooldown_toolgun = CreateConVar("sv_cooldown_toolgun", "0.8", {FCVAR_ARCHIVE, FCVAR_NOTIFY, FCVAR_REPLICATED}, "slow down toolgun execution speed")
local cooldown_propspawn = CreateConVar("sv_cooldown_propspawn", "0.7", {FCVAR_ARCHIVE, FCVAR_NOTIFY, FCVAR_REPLICATED}, "slow down spawning execution speed")

local function CooldownMeStronger(ply, action, duration)
    if not IsValid(ply) then return false end
    delay[ply] = delay[ply] or {}
    local now = CurTime()
    if delay[ply][action] and now < delay[ply][action] then
        return false
    end
    delay[ply][action] = now + duration
    return true
end

hook.Add("CanTool", "NGH_SIMPLY_SPAWNING_COOLDOWN_CATCHER", function(ply, trace, tool)
    if not CooldownMeStronger(ply, "CanTool", cooldown_toolgun:GetFloat()) then
        return false
    end
end)

hook.Add("PlayerSpawnProp", "NGH_SIMPLY_SPAWNING_COOLDOWN_CATCHER", function(ply)
    if not CooldownMeStronger(ply, "PlayerSpawnProp", cooldown_propspawn:GetFloat()) then
        return false
    end
end)

hook.Add("PlayerDisconnected", "NGH_COOLDOWN_CLEANUP", function(ply)
    delay[ply] = nil
end)
