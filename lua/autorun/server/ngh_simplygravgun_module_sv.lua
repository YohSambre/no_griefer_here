--  ╔═══════════════════════════╗
--  ║ » Simply Gravgun Module   ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝
print("NGH - Simply Gravgun Module loaded!")

hook.Add("GravGunOnPickedUp", "GGP_GRAVGUN_PREVENTION", function(_, ent)
    if IsValid(ent) and ent:GetClass() == "prop_physics" then
            return
        end
    ent:SetCollisionGroup(11)
end)

hook.Add("GravGunOnDropped", "GGP_GRAVGUN_PREVENTION", function(_, ent)
    if IsValid(ent) and ent:GetClass() == "prop_physics" then
        timer.Simple(0, function()
            if IsValid(ent) then
                timer.Simple(7, function()
                    if IsValid(ent) then
                        ent:SetCollisionGroup(0)
                    end
                end)
            end
        end)
    end
end)
