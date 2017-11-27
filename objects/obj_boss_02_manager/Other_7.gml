/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_boss_02_manager_attack)
{
	var paperwork = instance_create_layer(x+(image_xscale*25),y-50,"Instances",obj_boss_02_paperwork)
	var vx = obj_player.x - paperwork.x
	var vy = obj_player.y - paperwork.y
	var unit_x
	var unit_y
	var magnitude = sqrt((vx*vx) + (vy*vy))
	if(magnitude > 0)
	{
		//calculate the unit vector
		unit_x = vx / magnitude
		unit_y = vy / magnitude
	}
	
	paperwork.hspeed = unit_x * paperwork.travel_speed
	paperwork.vspeed = unit_y * paperwork.travel_speed
	
	current_throws++
	if (current_throws == throws_per_throw_state)
	{
		current_throws = 0
		throw_state = false
		stomp_state = true
		jumped_yet = false
	}
}