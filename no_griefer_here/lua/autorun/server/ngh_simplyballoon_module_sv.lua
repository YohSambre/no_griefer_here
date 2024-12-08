--  ╔═══════════════════════════╗
--  ║ » Simply Balloon Module   ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝

-- i often saw on servers people who are afraid of using too much ball because of their collision (really lags assured)
print("NGH - Simply Balloon Module loaded!")
-- i couldn't find of anything better..
local function SoPop(ent)
    if IsValid(ent) and ent:GetClass() == "gmod_balloon" then
        ent:SetCollisionGroup(1)
    end
end

local tTool = {
    ["collision"] = true,
    ["nocollide"] = true
}

local function AntiByPass(pPlayer, sTool, eEntities)
    if not IsValid(pPlayer) or not IsValid(eEntities) then return end

    if tTool[sTool] and not pPlayer:IsAdmin() and eEntities:GetClass() == "gmod_balloon" then
        return false
    end
end



hook.Add("CanProperty", "NGH_SIMPLY_BALLOON_COLLISION_CATCHER", AntiByPass)
hook.Add("CanTool", "NGH_SIMPLY_BALLOON_COLLISION_CATCHER", function(pPlayer, tTrace, sToolName)
    AntiByPass(pPlayer, sToolName, tTrace.Entity)
end)

hook.Add("OnEntityCreated", "NGH_SIMPLY_BALLOON_COLLISION_CATCHER", SoPop)
