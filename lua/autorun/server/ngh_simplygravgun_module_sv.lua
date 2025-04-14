--  ╔═══════════════════════════╗
--  ║ » Simply Gravgun Module   ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝
print("NGH - Simply Gravgun Module loaded!")

hook.Add("GravGunOnPickedUp", "GGP_GRAVGUN_PREVENTION", function(_, ent)
    if not IsValid(ent) then return end
    if engine.ActiveGamemode() == "darkrp" then
        if not (ent.CPPIGetOwner and ent:CPPIGetOwner() == ply and ent:GetClass()) then return end
    end
    ent:SetCollisionGroup(11)
end)

hook.Add("GravGunOnDropped", "GGP_GRAVGUN_PREVENTION", function(ply, ent)
    if not IsValid(ent) then return end
    if engine.ActiveGamemode() == "darkrp" then
        if not (ent.CPPIGetOwner and ent:CPPIGetOwner() == ply and ent:GetClass()) then return end
    end
    timer.Simple(0, function()
        if not IsValid(ent) then return end
            ent:SetCollisionGroup(11)
                timer.Simple(7, function()
                    if IsValid(ent) then
                ent:SetCollisionGroup(0)
            end
        end)
    end)
end)
