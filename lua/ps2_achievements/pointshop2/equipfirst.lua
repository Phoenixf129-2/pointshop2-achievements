ACHIEVEMENT = {}
ACHIEVEMENT.Name = "Item Numbero Uno" -- The Name of the Achievement. Viewable in the menu.
ACHIEVEMENT.Description = "Equip your first item" -- The description that appears in the menu.
ACHIEVEMENT.Icon = "equipfirst.png" -- The icon that appears in the menu.
ACHIEVEMENT.Min = 0 -- At what stage do you start? Normal starting position is 0.
ACHIEVEMENT.Max = 1 -- At what stage do you earn the achievement? Set to 1 for instant achieve on action completion.
ACHIEVEMENT.Gamemode = {} -- If empty, will register on all gamemodes.
ACHIEVEMENT.TTTDelay = false -- If true, disables achievement broadcasting to other players until round end.
ACHIEVEMENT.Reward = nil -- nil for no reward, otherwise define table as: { items = {}, points = 0, premiumPoints = 0 } 

-- Initialize only runs serverside, if it has passed the above Gamemode checks.
ACHIEVEMENT.Initialize = function()
	
	hook.Add("PS2_EquipItem", "Ps2Ach." .. ACHIEVEMENT.Name, function( ply )
		ply:UpdateAchievement(Ps2Achievements:GetByName(ACHIEVEMENT.Name), 1)
	end)
	
end