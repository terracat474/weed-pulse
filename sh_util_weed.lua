local ITEM = {}

ITEM.UniqueID = "util_weed"
ITEM.Name = "Weed"
ITEM.Desc =  "A funny leaf."
ITEM.Model = Model("models/props_junk/glassjug01.mdl")
ITEM.FOV = 30
ITEM.NoCenter = true

ITEM.Weight = 0.1

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = true
ITEM.CanStack = true

impulse.RegisterItem(ITEM)
