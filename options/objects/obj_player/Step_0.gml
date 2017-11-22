/// @description Per-frame calculations

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

//change animation/facing according to movement
if (x > mouse_x)
{
	image_xscale = -1
}
else if (x < mouse_x)
{
	image_xscale = 1
}
//aiming
var vector_mouse_x = mouse_x - x
var vector_mouse_y = mouse_y - y
var xaimer = mouse_x 
var yaimer = mouse_y
var magnitude = sqrt((vector_mouse_x*vector_mouse_x) + (vector_mouse_y*vector_mouse_y))
if (magnitude > 0)
{
	unit_x = vector_mouse_x / magnitude
	unit_y = vector_mouse_y / magnitude
}

var radians = arctan2(-unit_y, unit_x) 
degrees = radtodeg(radians)
//show_debug_message(degrees)

//right
if(degrees >= -22.5 && degrees < 22.5)
{ 
	image_index = 1
	current_aiming_angle = 0
}
//right up
else if(degrees >= 22.5 && degrees < 67.5) 
{
	image_index = 2
	current_aiming_angle = 45
}
//up
else if(degrees >= 67.5 && degrees < 112.5)
{
	image_index = 3
	current_aiming_angle = 90
}
//up left
else if(degrees >= 112.5 && degrees < 157.5) 
{
	image_index = 2
	current_aiming_angle = 135
}
//left
else if(degrees >= 157.5 || degrees < -157.5) 
{
	image_index = 1
	current_aiming_angle = 180
}
//down left
else if(degrees >= -157.5 && degrees < -112.5) 
{
	image_index = 4
	current_aiming_angle = 235
}
//down 
else if(degrees >= -112.5 && degrees < -67.5) 
{
	image_index = 5
	current_aiming_angle = 270
}
//down right
else if(degrees >= -67.5 && degrees < -22.5) 
{
	image_index = 4
	current_aiming_angle = 315
}
