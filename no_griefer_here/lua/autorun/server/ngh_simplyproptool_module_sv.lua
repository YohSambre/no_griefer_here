--  ╔═══════════════════════════╗
--  ║ » Simply Prop|Tool Module ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝
print("NGH - Simply Prop|Tool Module loaded!")
-- probably not so useful thanks to the Simply Physgun Module..BUT YOLOOOOOOOOOOOO :dance:
hook.Add("EntityTakeDamage", "NGH_SIMPLY_ANTI_PROPKILL_AND_TOOLKILL_MODULE", function(target, dmginfo)
    if target:IsPlayer() then
        local inflictor = dmginfo:GetInflictor()
        if IsValid(inflictor) and 
           (inflictor:GetClass() == "prop_physics" or 
            inflictor:GetClass() == "gmod_balloon" or 
            inflictor:GetClass() == "gmod_wheel" or 
            inflictor:GetClass() == "gmod_dynamite" or 
            inflictor:GetClass() == "gmod_hoverball" or 
            inflictor:GetClass() == "gmod_thruster") then
            dmginfo:SetDamage(0) -- '_'
        end
    end
end)
