impulse.Business.Define("Weed Pot", {
    entity = "impulse_hl2rp_weedpot",
    model = "models/props_c17/woodbarrel001.mdl",
    description = "A pot to grow weed.",
    price = 100,
    refundAdd = 75,
    refund = true,
    removeOnTeamSwitch = true,
    postSpawn = function(ent, ply)
    	ply.BarrelCount = (ply.BarrelCount or 0) + 1
    end,
    customCheck = function(ply)
        if ply:Team() != TEAM_CITIZEN then
            return false
        end
        
    	local barrelCount = ply.BarrelCount or 0

    	if barrelCount >= impulse.Config.MaxBarrels then
    		ply:Notify("You have reached the max amount of weed pots.")
    		return false
    	else
    		return true
    	end
    end
})
