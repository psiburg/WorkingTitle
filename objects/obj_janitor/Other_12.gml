/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	hsp = 0;
	vsp = (min(6, vsp + grav));
	instance_destroy(obj_mop)

	if (distance_to_object(obj_player) > 50 && distance_to_object(obj_player) < 500)
		{
			instance_destroy(obj_mop)
			state_m = move_m

		}


	if(distance_to_object(obj_player) < 50 )
		{	
			state_m = attack_m
		
		}
		
}

//if(obj_)