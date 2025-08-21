--  ╔═══════════════════════════╗
--  ║ » Simply Staff M9K Module ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝
print("NGH - Simply Staff M9K Module loaded!")
-- NO NO YOU CAN’T DO IT
local function SoEvil(ply, class, weapon)
    if (class == "m9k_davy_crockett" or class == "m9k_orbital_strike") and not ply:IsSuperAdmin() then
        if DontSpamNotify and DontSpamNotify > CurTime() then return false end
            DontSpamNotify = CurTime() + 2 
            ply:SendLua("surface.PlaySound( 'vo/npc/male01/sorrydoc02.wav' )")
            ply:SendLua("notification.AddLegacy('Sorry, you need admin rank and alive to use this', 3, 4)")
        return 0 -- ( ͡° ͜ʖ ͡°)
    end
end
hook.Add("PlayerGiveSWEP", "NGH_SIMPLY_M9K_MODULE_PGS", SoEvil)

-- Damn i’m lazy, we don’t care
hook.Add("AllowPlayerPickup", "NGH_SIMPLY_M9K_MODULE", function (ply, weapon) 
	return SoEvil(ply, weapon:GetClass(), weapon) 
end)

-- again
hook.Add("PlayerCanPickupWeapon", "NGH_SIMPLY_M9K_MODULE_PCPW", function (ply, weapon) 
	return SoEvil(ply, weapon:GetClass(), weapon) 
end)

-- i promise to stop
hook.Add( "PhysgunPickup", "NGH_SIMPLY_M9K_MODULE_PP", function (ply, weapon) -- That sounds like a little paranoid..
	return SoEvil(ply, weapon:GetClass(), weapon)
end)

-- i prefer not to take unnecessary risk. 
local function NiceTryButNope(ent,ply)
    if IsValid(ent) and (ent:GetClass() == "m9k_davy_crockett" or ent:GetClass() == "m9k_orbital_strike") then
            print("NGH - Restricted SWEP spawned by Toolgun (Creator Tool) detected and removed to preserve safety: " .. ent:GetClass())
                timer.Simple( 8, function()
                    if IsValid(ent) then -- @#%~& !
                ent:Dissolve(0, 0, nil)
            end
        end)
    end
end
hook.Add("OnEntityCreated", "NGH_SIMPLY_M9K_MODULE_OEC", NiceTryButNope)

hook.Add("PlayerUse", "NGH_SIMPLY_M9K_MODULE_PU", function(ply, ent)
    if IsValid(ent) and (ent:GetClass() == "m9k_davy_crockett" or ent:GetClass() == "m9k_orbital_strike") then
        if DontSpamNotify and DontSpamNotify > CurTime() then return false end
            DontSpamNotify = CurTime() + 2 
            ply:SendLua("surface.PlaySound('vo/npc/male01/sorrydoc02.wav')")
            ply:SendLua("notification.AddLegacy('Sorry, you need Admin rank to use this (nice try)', 3, 4)")
        return false
    end
end)
