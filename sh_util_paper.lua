local ITEM = {}

ITEM.UniqueID = "util_paper"
ITEM.Name = "A piece of paper"
ITEM.Desc =  "Ordinary old piece of paper."
ITEM.Model = Model("models/props_junk/glassjug01.mdl")
ITEM.FOV = 30
ITEM.NoCenter = true

ITEM.Weight = 0.1

ITEM.Droppable = true
ITEM.DropOnDeath = false

ITEM.Illegal = false
ITEM.CanStack = true

impulse.RegisterItem(ITEM)
