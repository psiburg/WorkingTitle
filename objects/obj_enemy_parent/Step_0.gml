/// @description Gravity & death destroy
// You can write your code in this editor

if (hit_points <= 0)
{
	instance_destroy()
}

//if moves off a platform
if (!place_meeting(x, y + 1, obj_ground))
{
	touchingGround = false
}

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
	touchingGround = true
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

//fixing a minor collision bug with the player occasionally
//getting stuck in the ground if jumping onto an edge at just the wrong angle
if (place_meeting(x, y, obj_ground) && place_meeting(x, y+1, obj_ground))
{
	y-=1
}