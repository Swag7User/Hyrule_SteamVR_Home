-- Teleports the player to the location of a destination marker.
function TeleportPlayer(params)

	-- Check that a valid player activated the trigger.
	if params.activator and params.activator:GetClassname() == "player"
	then
	
		local destination = Entities:FindByName(nil, "teleport_dest2")
		
		local anchor = params.activator:GetHMDAnchor()
		
		-- Calculates the players postion relative to the anchor center using vector arithmetics.
		local localPlayerOrigin = anchor:GetOrigin() - params.activator:GetOrigin()
		anchor:SetOrigin(localPlayerOrigin + destination:GetOrigin())
		
	end
	
end