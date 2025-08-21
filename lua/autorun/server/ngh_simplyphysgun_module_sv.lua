--  ╔═══════════════════════════╗
--  ║ » Simply Physgun Module   ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝
print("NGH - Simply Physgun Module loaded!")
local ngh_customm = CreateConVar("sv_ngh_material", "models/shiny", {FCVAR_NONE, FCVAR_NOTIFY, FCVAR_REPLICATED}, "Choose your material for ghost mode props")

-- should discourage those who unlock a lot of props at once (hi guys who use "stacker tool")
local function PhysgunBasicProtection(ply)
    return false
end
hook.Add("OnPhysgunReload", "PPP_PHYSGUN_BASIC_PREVENTION", PhysgunBasicProtection)

local function SoBad(_, ply)
    local iValue = ply:GetInfo("cl_weaponcolor")
    if not (ply:IsAdmin()) and iValue ~= "255 255 0" then
        ply:SendLua('RunConsoleCommand("cl_weaponcolor", "255 255 0")') -- (é_é')
    end
end
hook.Add("WeaponEquip", "NGH_INITIALSPAWN_PHYSGUN_LASER_CATCHER", SoBad)

local function SoNotCrazy(ply)
    if not IsValid(ply) then return end
    local iValue = ply:GetInfo("physgun_wheelspeed")
    if iValue ~= "90" then
        ply:SendLua('RunConsoleCommand("physgun_wheelspeed", "90")')
    end
end
hook.Add("PhysgunPickup", "NGH_INITIALSPAWN_PHYSGUN_CRAZYWHEELSPEED_CATCHER", SoNotCrazy)
hook.Add("PhysgunDrop", "NGH_SPAWN_PHYSGUN_LASER_CRAZYWHEELSPEED_CATCHER", SoNotCrazy)

local tClassEntities = {
    ["prop_physics"] = true,
    ["gmod_balloon"] = true,
    ["gmod_button"] = true,
    ["gmod_cameraprop"] = true,
    ["gmod_dynamite"] = true,
    ["gmod_lamp"] = true,
    ["gmod_light"] = true,
    ["gmod_thruster"] = true,
    ["gmod_wheel"] = true,
    ["keypad"] = true
}

local function NGHOPP(ply, ent)
    if not IsValid(ent) then return end
    if engine.ActiveGamemode() == "darkrp" then
        if not (ent.CPPIGetOwner and ent:CPPIGetOwner() == ply and tClassEntities[ent:GetClass()]) then return end
    end
    ent.IsGrabbed = true
        ent:SetCollisionGroup(11)
        ent:SetMaterial(ngh_customm:GetString())
        constraint.RemoveConstraints(ent, "Weld")
        constraint.RemoveConstraints(ent, "Hydraulic")
        constraint.RemoveConstraints(ent, "Elastic")
        constraint.RemoveConstraints(ent, "Motor")
        constraint.RemoveConstraints(ent, "Muscle")
        constraint.RemoveConstraints(ent, "Rope")
        constraint.RemoveConstraints(ent, "Slider")
        constraint.RemoveConstraints(ent, "Winch")
end
hook.Add("PhysgunPickup", "NGH_GHOSTED_PROPANDTOOL_PICKUP", NGHOPP)

local function NGHOPD(ply, ent)
    if not IsValid(ent) then return end
    if engine.ActiveGamemode() == "darkrp" then
        if not (ent.CPPIGetOwner and ent:CPPIGetOwner() == ply and tClassEntities[ent:GetClass()]) then return end
    end
    ent.IsGrabbed = false
        timer.Create( "NGH_PD", 7, 1, function() -- i obviously wanted to use timer.Simple , the problem was that it caused a problem that bypassed my antipropblock/proppush
        if IsValid(ent) and not ent.IsGrabbed then
            ent:SetCollisionGroup(0)
            ent:SetMaterial("")
        end
    end)
end
hook.Add("PhysgunDrop", "NGH_GHOSTED_PROPANDTOOL_PHYSGUNDROP", NGHOPD)

local function NGHOEC(ent)
    if IsValid(ent) and (tClassEntities[ent:GetClass()]) then
        timer.Simple(0, function()
            if not IsValid(ent) then return end
                ent:SetCollisionGroup(11)
                ent:SetMaterial(ngh_customm:GetString())
                local tname = "NGH_SPAWN_" .. ent:EntIndex()
                timer.Create(tname, 3, 1, function()
                    if IsValid(ent) and not ent.IsGrabbed then
                        ent:SetCollisionGroup(0)
                        ent:SetMaterial("")
                    end
                end)
            end
        end)
    end
end
hook.Add("OnEntityCreated", "NGH_GHOSTED_SPAWNED_ENTITY", NGHOEC)

