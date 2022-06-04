local VENDOR = {}

VENDOR.UniqueID = "dealer"
VENDOR.Name = "Weed dealer"
VENDOR.Desc = "Sells weed and shit."

VENDOR.Model = "models/male_07.mdl"
VENDOR.Skin = 0
VENDOR.Gender = "male" -- male, female, cp
VENDOR.Talk = true

VENDOR.Sell = {
	["util_weedseed"] = {
		Cost = 100
	},
	["util_paper"] = {
		Cost = 25
	}
}

VENDOR.Buy = {
	["food_blunt"] = {
		Cost = 250
	}
}

function VENDOR:CanUse(ply)
	return not ply:IsCP()
end

function VENDOR:Initialize()
    self.Positions = impulse.Config.DealerLocations
    self.NextMove = CurTime() + 10
end

local function moveToNextPosition(ent)
	ent.NextMove = CurTime() + math.random(impulse.Config.DealerTeleportTimeMin, impulse.Config.DealerTeleportTimeMax)
    local newPosition = ent.Positions[math.random(#ent.Positions)]

    if newPosition.pos == ent:GetPos() then
        return moveToNextPosition(ent)
    end

    if impulse.IsEmpty(newPosition.pos) then
        ent:SetPos(newPosition.pos)
        ent:SetAngles(newPosition.ang)
    else
        -- decreases chance of position being built on, however it is intentionally not perfect to stop players from making dupes to force the npc pos
        newPosition = ent.Positions[math.random(#ent.Positions)]
        ent:SetPos(newPosition.pos)
        ent:SetAngles(newPosition.ang)
    end

    ent:RemoveAllDecals()
end

function VENDOR:Think()
    if CurTime() > self.NextMove then
        moveToNextPosition(self)
    end

    self:NextThink(CurTime() + 8)
    return true
end

impulse.RegisterVendor(VENDOR)
