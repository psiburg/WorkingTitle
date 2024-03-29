/// @description Insert description here
// You can write your code in this editor

/********Move State**********/

//check if player exists and if player is farther than given point 
if(instance_exists(obj_player) && distance_to_object(obj_player) > 250 )
	{
		dir = sign(obj_player.x - x);
		sprite_index = spr_soldier_move

		
		hsp = dir * 4;
		if(hsp > 0)
		{
			image_xscale = -1
		}
		else if (hsp < 0)
		{
			image_xscale = 1
		}
		
		
		
		
		vsp = (min(6, vsp + grav));
	}
/****************************************/


/********Switch States**********/

//Switch to attack state but only
//if the player exists and if distance 
//is less than given point
if(instance_exists(obj_player) && distance_to_object(obj_player) < 250 )
	{	
		state_m = attack_m
		sprite_index = spr_soldier_idle

	}

/****************************************/




//Horizontal Collision
if (place_meeting(x + hsp, y, obj_ground))
{
	while(!place_meeting(x + sign(hsp), y, obj_ground))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_ground))
{
	while(!place_meeting(x, y + sign(vsp), obj_ground))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;







