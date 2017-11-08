/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player))
{
	if distance_to_object(obj_player) > 50 and distance_to_object(obj_player) < 500
	{

		state_m = move_m

	}
	
	if(distance_to_object(obj_player) > 500)
	{
		state_m = idle_m

	}
	

	if (melee = 0 and distance_to_object(obj_player) < 50)
	{
		melee = 1
		instance_create_layer(x,y, "Instances", obj_mop)
		if(hsp > 0)
		{
			obj_mop.image_xscale = -1
		}
		else if (hsp < 0)
		{
			obj_mop.image_xscale = 1
		}
		alarm[0] = room_speed*0.2
		alarm[1] = room_speed*0.5
		
		
	}

}

