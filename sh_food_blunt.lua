local ITEM = {}

ITEM.UniqueID = "food_blunt"
ITEM.Name = "Blunt"
ITEM.Desc =  "Some gas to inhale."
ITEM.Category = "Food"
ITEM.Model = Model("models/bioshockinfinite/hext_bottle_lager.mdl")
ITEM.FOV = 45
ITEM.Weight = 0.5
ITEM.NoCenter = true

ITEM.Droppable = true
ITEM.DropOnDeath = true

ITEM.Illegal = true
ITEM.CanStack = true

ITEM.UseName = "Smoke"
ITEM.UseWorkBarTime = 10
ITEM.UseWorkBarName = "Smoke..."
ITEM.UseWorkBarSound = "impulse/drink.wav"

ITEM.Food = -50

function ITEM:OnUse(ply)
      ply:FeedHunger(self.Food)
    return true
    ply:Notify("That's some good shit...")	
    return true
    local effectData = EffectData()	
    effectData:SetOrigin(ply:GetPos()) 
    
    util.Effect("ElectricSpark", effectData)
  return true
end

impulse.RegisterItem(ITEM)
