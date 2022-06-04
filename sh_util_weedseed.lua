local ITEM = {}

ITEM.UniqueID = "util_seed"
ITEM.Name = "Weed seed"
ITEM.Desc = "Some seeds to get started."
ITEM.Model = Model("models/props_lab/box01a.mdl")
ITEM.FOV = 6.769340974212
ITEM.CamPos = Vector(-100, 21.776504516602, 29.226360321045)
ITEM.NoCenter = true
ITEM.Weight = 0.1

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = true
ITEM.CanStack = true

impulse.RegisterItem(ITEM)
