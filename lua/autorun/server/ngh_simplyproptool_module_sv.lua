--  ╔═══════════════════════════╗
--  ║ » Simply Prop|Tool Module ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝
print("NGH - Simply Prop|Tool Module loaded!")
-- probably not so useful thanks to the Simply Physgun Module..BUT YOLOOOOOOOOOOOO :dance:
local tClassEntities = {
    ["prop_physics"] = true,
    ["gmod_balloon"] = true,
    ["gmod_wheel"] = true,
    ["gmod_dynamite"] = true,
    ["gmod_hoverball"] = true,
    ["gmod_thruster"] = true
}
hook.Add("EntityTakeDamage", "NGH_SIMPLY_ANTI_PROPKILL_AND_TOOLKILL_MODULE", function(target, dmginfo)
    if target:IsPlayer() then
        local inflictor = dmginfo:GetInflictor()
        if IsValid(inflictor) and (tClassEntities[inflictor:GetClass()]) then
            dmginfo:SetDamage(0) -- '_'
        end
    end
end)
