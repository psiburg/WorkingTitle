/// @description Per-frame calculations

if (dash_iframes && dash_time != dash_max_time)
{
	hspeed = 30 * image_xscale
	dash_time = dash_time + 2
	show_debug_message(string(dash_time/room_speed))
	if (dash_time/room_speed >= dash_max_time)
	{
		dash_iframes = false
		hspeed = 0
	}
	health = snapshot_health
}

//pull player to grappling hook
//block all actions during travel
if (hook_in_progress && place_meeting(hook_obj.x,hook_obj.y,obj_ground))
{
	speed = 0
	var vx = hook_obj.x - x; //x compenent of our vector
	var vy = hook_obj.y - y; //y component of our vector
	var unit_x
	var unit_y
	var magnitude = sqrt((vx*vx) + (vy*vy)) //a^2 + b^2 = c^2
	
	if(magnitude > 0)
	{
		//calculate the unit vector
		unit_x = vx / magnitude
		unit_y = vy / magnitude
	}
	
	var xspeed = unit_x * hook_obj.pull_speed
	var yspeed = unit_y * hook_obj.pull_speed
	x += xspeed
	y += yspeed
	
	//if wall on next step, stop the hook
	if (place_meeting(x+xspeed,y+yspeed,obj_ground))
	{
		hook_in_progress = false
	}
	
	//do not do the rest of the code during grappling hook calculations
	return
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
	if (place_meeting(x, y + 1, obj_ground))
			canJump = true
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

//fixing a minor collision bug with the player occasionally
//getting stuck in the ground if jumping onto an edge at just the wrong angle
if (place_meeting(x, y, obj_ground) && place_meeting(x, y+1, obj_ground))
{
	y-=1
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
var magnitude = sqrt((vector_mouse_x*vector_mouse_x) + (vector_mouse_y*vector_mouse_y))
if (magnitude > 0)
{
	unit_x = vector_mouse_x / magnitude
	unit_y = vector_mouse_y / magnitude
}

var radians = arctan2(-vector_mouse_y, vector_mouse_x) 
var degrees = radtodeg(radians)
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
