/// @description Insert description here
// You can write your code in this editor

selection_color[current_weapon] = c_green
if (current_weapon == array_length_1d(weapon_upgrades)-1)
	current_weapon = 0
else
	current_weapon++
	
selection_color[current_weapon] = c_red