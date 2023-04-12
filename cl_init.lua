include("shared.lua")
local start.time
local end.time

ENT.Percentage = 0

function ENT:Think()
    self:SetNextClientThink(CurTime() + 1)
    return true
end

function ENT:Draw()
    self:DrawModel()
end

local requiredNames = {
 [0] = "Requires Weed seed",
 [1] = "Requires Water",
 [2] = "Growing...",
 [3] = "Growing 100%",
}

function ENT.Think()
 local required = self:GetRequired()
 self:SetClientNextThink(CurTime() + 1)

 if required and requiredNames[required] then
  self.HUDnames = requiredNames[required]
 end
end

if required = 2 then
 start.time = (CurTime())
end

if (CurTime()) = start.time + 5
 then required = 3
end
