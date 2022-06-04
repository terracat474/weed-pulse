local MIX = {}

MIX.Class = "blunt"

MIX.Level = 3
MIX.Bench = "weed"

MIX.Output = "food_blunt"
MIX.Input = {
	["util_weed"] = {take = 1},
	["util_paper"] = {take = 1}
}

impulse.RegisterMixture(MIX)
