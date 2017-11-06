/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) > 50 
	{

		state_m = move_m

	}

	if mop_hit = 0
	{
		
		mop_hit = 1
		instance_create_layer(x,y,"Instances",obj_mop)
		
		
		if(hsp > 0)
		{
			obj_mop.image_xscale = -1
		}
		else if (hsp < 0)
		{
			obj_mop.image_xscale = 1
		}
		
		
		alarm[0] = room_speed*0.1
		alarm[1] = room_speed*0.2
		
		
	}

}



/*
		var dir = point_direction(x,y,obj_player.x,obj_player.y)
		var x_offset = lengthdir_x(20,dir);
		var y_offset = lengthdir_y(20,dir);
		
		var bullet = instance_create_layer(x + x_offset,y + y_offset, "Instances", obj_bulletB)
		bullet.direction = dir;
		alarm[0] = bullet_cooldown_
		



/*
var way = point_direction(x,y,obj_player.x,obj_player.y)
		var x_offset = lengthdir_x(20,way);
		var y_offset = lengthdir_y(20,way);
		var short_r = 


short_r.direction = way	








