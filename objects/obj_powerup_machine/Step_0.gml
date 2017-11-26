/// @description Insert description here
// You can write your code in this editor

if (powerup_dialog)
{
	if (powerup.selected && obj_player.weapons_owned == 1)
	{
		selected_item = true
		obj_player.weapons_owned++
		obj_player.unlocked_hook = true
	}
	
	else if (powerup.selected && obj_player.weapons_owned == 2)
	{
		selected_item = true
		obj_player.weapons_owned++
		obj_player.unlocked_invis = true
	}
	
	else if (powerup.selected && obj_player.weapons_owned == 3)
	{
		selected_item = true
		obj_player.weapons_owned++
		obj_player.unlocked_dash = true
	}
}
//upgrades - after player unlocks all powerups
if (upgrade_dialog)
{
	if (rockets_upg.selected)
	{
		selected_item = true
		obj_player.rockets_cooldown = rockets_upgrade
	}

	if (hook_upg.selected)
	{
		selected_item = true
		obj_player.hook_cooldown = hook_upgrade
	}

	if (invis_upg.selected)
	{
		selected_item = true
		obj_player.invis_cooldown = invis_upgrade
	}

	if (dash_upg.selected)
	{
		selected_item = true
		obj_player.dash_max_time = dash_upgrade
	}
}

//destroy buttons after selection
if (selected_item && (upgrade_dialog || powerup_dialog))
{
	upgrade_dialog = false
	powerup_dialog = false
	with (obj_vending_button)
		instance_destroy()
}
