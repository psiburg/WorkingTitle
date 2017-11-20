/// @description Insert description here
// You can write your code in this editor
if (vending_dialog)
{
	if (rockets.selected)
	{
		selected_powerup = true
		obj_player.rockets_cooldown = rockets_upgrade
	}

	if (hook.selected)
	{
		selected_powerup = true
		obj_player.hook_cooldown = hook_upgrade
	}

	if (invis.selected)
	{
		selected_powerup = true
		obj_player.invis_cooldown = invis_upgrade
	}

	if (dash.selected)
	{
		selected_powerup = true
		obj_player.dash_max_time = dash_upgrade
	}
}

if (selected_powerup)
{
	vending_dialog = false
	with (obj_vending_button)
		instance_destroy()
}