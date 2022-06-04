ENT.Base = "base_anim"
ENT.Type = "anim"
ENT.PrintName = "Weed Pot"
ENT.Author = "TerraCat474"
ENT.Category = "impulse - alcohol"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.HUDName = "Weed Pot"
ENT.HUDDesc = "Used to grow weed."

ENT.Ingredients = {
    {
        name = "Weed seed",
        isPresent = false
    },
    {
        name = "Water",
        isPresent = false
    }
}

function ENT:SetupDataTables()
    self:NetworkVar("Int", 0, "StartTime")
    self:NetworkVar("Int", 1, "EndTime")
    if SERVER then
        self:SetStartTime(0)
        self:SetEndTime(0)
    end
end
