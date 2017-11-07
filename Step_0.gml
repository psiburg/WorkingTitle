/// @description Insert description here
// You can write your code in this editor
distance_to_player=distance_to_object(obj_player)

player_width=sprite_get_width(obj_player.sprite_index)
player_height=sprite_get_height(obj_player.sprite_index)
player_average_size=(player_width+player_height)/2

if(distance_to_player<=los) && (cool_down<1)
{
	var bullet_id
	bullet_id=instance_create_layer(x+lengthdir_x(lenX,image_angle)-lengthdir_y(lenY,image_angle),y+lengthdir_y(lenX,image_angle)+lengthdir_x(lenY,image_angle),"Instances",obj_lazy_blob_bullet)
	cool_down=30
}
cool_down=cool_down-1
if(health<=0) instance_destroy()

//if not touching the ground, increase gravity
if (!place_meeting(x, y + vspeed, obj_ground) && !touchingGround)
{
	gravity = global.gravityStrength
}

else 
{
	//if the player will touch the ground on the next frame
	//at current speed, move the player pixel by pixel
	//until they touch the ground exactly.
	while (!place_meeting(x,y+(sign(vspeed)),obj_ground) && vspeed != 0)
	{
		y += sign(vspeed)
	}
	gravity = 0
	vspeed = 0
	canJump = true
	touchingGround = true
}

//if the player moves off a platform
if (!place_meeting(x, y + 1, obj_ground))
{
	touchingGround = false
}

//wall collision by similar rules to gravity
if (place_meeting(x + hspeed, y, obj_ground) && hspeed != 0)
{
   	while (!place_meeting(x+sign(hspeed),y,obj_ground))
	{
		x += sign(hspeed)
	}
	hspeed = 0
}
if(hitpoint<=0)instance_destroy()