--  ╔═══════════════════════════╗
--  ║ » Simply No Drive Module  ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝
print("NGH - Simply No Drive Module loaded!")
-- it's fun, but not when trolls block people with it or bypass a base protection to invade it.
local function SimplyDriveRestriction(ply, property) --                       v loool v
    if IsValid(ply) and property == "drive" then if not ply:IsAdmin() or not ply:Alive() then
            ply:SendLua("surface.PlaySound( 'vo/npc/male01/sorrydoc02.wav' )")
            ply:SendLua("notification.AddLegacy('Sorry, you need admin rank and alive to use this', 3, 4)")
            return false
        end
    end
end
hook.Add("CanProperty", "SIMPLY_DRIVE_RESTRICT_MODULE", SimplyDriveRestriction)