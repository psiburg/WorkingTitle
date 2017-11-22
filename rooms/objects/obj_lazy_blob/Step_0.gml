/// @description Insert description here
// You can write your code in this editor
event_inherited()


distance_to_player=distance_to_object(obj_player)
if(distance_to_player<=los) && (cool_down<0) && (obj_player.is_invisible=false)
{
	var bullet_id
	bullet_id=instance_create_layer(x+lengthdir_x(lenX,image_angle)-lengthdir_y(lenY,image_angle),y+lengthdir_y(lenX,image_angle)+lengthdir_x(lenY,image_angle),"Instances",obj_lazy_blob_bullet)
	cool_down=45
	sprite_index = spr_lazy_blob_attack
	image_speed = .3
}
cool_down=cool_down-1
dir=sign(obj_player.x-x)

if cool_down = true
{ 
	sprite_index =spr_lazy_blob
}


if(hit_points<=0)instance_destroy()

if (x > obj_player.x)
{
	image_xscale = 1
}
else if (x < obj_player.x)
{
	image_xscale = -1
}