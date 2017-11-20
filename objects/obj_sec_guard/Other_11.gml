/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_player)
{
	if distance_to_object(obj_player) > 250 
	{

		state_m = move_m

	}

	if can_shoot = 0 && alarm[0] <= 0
	{
		var dir = point_direction(x,y,obj_player.x,obj_player.y)
		var x_offset = lengthdir_x(30,dir);
		var y_offset = lengthdir_y(30,dir);
		
		var bullet = instance_create_layer(x + x_offset,y + y_offset, "Instances", obj_sec_bullet)
		bullet.direction = dir;
		bullet.speed = obj_sec_bullet.b_speed
		alarm[0] = bullet_cooldown_
		
		
		
	}

}



		







