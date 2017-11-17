/// @description Insert description here
// You can write your code in this editor
//if not touching the ground, increase gravity
if (!place_meeting(x, y + vspeed, obj_ground))
{
	while (!place_meeting(x,y+(sign(vspeed)),obj_ground) && vspeed != 0)
	{
		y += sign(vspeed)
	}
	gravity = 0
	vspeed = 0
}
if (place_meeting(x + hspeed, y, obj_ground) && hspeed != 0)
{
   	while (!place_meeting(x+sign(hspeed),y,obj_ground))
	{
		x += sign(hspeed)
	}
	hspeed = 0
}

distance_to_player=distance_to_object(obj_player)
if(distance_to_player<=los) && (cool_down<0)
{
	var bullet_id
	bullet_id=instance_create_layer(x+lengthdir_x(lenX,image_angle)-lengthdir_y(lenY,image_angle),y+lengthdir_y(lenX,image_angle)+lengthdir_x(lenY,image_angle),"Instances",obj_lazy_blob_bullet)
	cool_down=45
}
cool_down=cool_down-1
dir=sign(obj_player.x-x)

if(hit_points<=0)instance_destroy()
//Gravity
if (!place_meeting(x, y + vspeed, obj_ground) && !touchingGround)
{
	gravity = global.gravityStrength
}

else 
{
	while (!place_meeting(x,y+(sign(vspeed)),obj_ground) && vspeed != 0)
	{
		y += sign(vspeed)
	}
	if (place_meeting(x, y + 1, obj_ground))
	gravity = 0
	vspeed = 0
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

if (x > obj_player.x)
{
	image_xscale = 1
}
else if (x < obj_player.x)
{
	image_xscale = -1
}