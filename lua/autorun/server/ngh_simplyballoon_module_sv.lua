--  ╔═══════════════════════════╗
--  ║ » Simply Balloon Module   ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝

-- i often saw on servers people who are afraid of using too much ball because of their collision (really lags assured)
print("NGH - Simply Balloon Module loaded!")
-- i couldn't find of anything better..
local function SoPop(ent)
timer.Create("SAMBRE_BALLOON_PATCH", 0.1, 0, function()
    for _, ent in ipairs(ents.FindByClass("gmod_balloon")) do
        if IsValid(ent) then
                ent:SetCollisionGroup(1)
            end
        end
    end)
end
hook.Add("OnEntityCreated", "NGH_SIMPLY_BALLOON_COLLISION_CATCHER", SoPop)
