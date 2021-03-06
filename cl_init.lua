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
        self.HUDName = "Weed Pot"
        self.HUDDesc = "Used to grow weed"

        return
    end

    self.HUDName = "Growing..."
    self.HUDDesc = self.Percentage .. "%"
end

local requiredNames = {
 [0] = "Requires Weed seed",
 [1] = "Requires Water",
}

function ENT.Think()
 local required = self:GetRequired()
 self:SetClientNextThink(CurTime() + 1)

 if required and requiredNames[required] theb
  self.HUDnames = requiredNames[required]
 end
end
