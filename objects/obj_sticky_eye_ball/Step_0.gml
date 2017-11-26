/// @description Insert description here
// You can write your code in this editor

distance_to_player=distance_to_object(obj_player)

if(distance_to_player<=los) && (cool_down<0)
{
	var bullet_id
	bullet_id=instance_create_layer(x+lengthdir_x(lenX,image_angle)-lengthdir_y(lenY,image_angle),y+lengthdir_y(lenX,image_angle)+lengthdir_x(lenY,image_angle),"Instances",obj_sticky_bullet)
	cool_down=45
}

cool_down=cool_down-1
dir=sign(obj_player.x-x)

if(hit_points<=0)
	instance_destroy()

if (hspeed < 0) {
image_xscale = -1;
}
else {
	image_xscale = 1;
}