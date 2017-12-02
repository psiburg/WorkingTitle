/// @description Cycle powerups
// You can write your code in this editor
if ((instance_exists(obj_powerup_machine) && (obj_powerup_machine.upgrade_dialog || obj_powerup_machine.powerup_dialog)) || global.gameOver) { return; }

//change current selection back to green
selection_color[weapon_index] = c_green

//start over if at the end
if (weapon_index == weapons_owned-1)
	weapon_index = 0
else
	weapon_index++

//change new current selection to red
selection_color[weapon_index] = c_red
