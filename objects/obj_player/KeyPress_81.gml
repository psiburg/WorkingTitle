/// @description Cycle powerups
// You can write your code in this editor

//change current selection back to green
selection_color[weapon_index] = c_green

//start over if at the end
if (weapon_index == array_length_1d(weapon_upgrade)-1)
	weapon_index = 0
else
	weapon_index++

//change new current selection to red
selection_color[weapon_index] = c_red