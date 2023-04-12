-- "gamemodes\\landis-hl2rp\\entities\\entities\\impulse_hl2rp_brewingbarrel\\cl_init.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
include("shared.lua")
ENT.Percentage = 0

function ENT:Think()
    self:SetNextClientThink(CurTime() + 1)
    return true
end

function ENT:Draw()
    self:DrawModel()

    self.Percentage = math.Round((math.Clamp((self:GetStartTime() - CurTime()) / (self:GetStartTime() - self:GetEndTime()), 0, 1) * 100), 1)
  
    if self.Percentage == 0 then
        self.HUDName = "Brewing Barrel"
        self.HUDDesc = "Used to brew alcohol"

        return
    end

    self.HUDName = "Brewing..."
    self.HUDDesc = self.Percentage .. "%"
end