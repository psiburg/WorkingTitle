/// @description Simple constant back and forth motion

//if not touching the ground, increase gravity
if (!place_meeting(x, y + vspeed, obj_ground) && !touchingGround)
{
	show_debug_message("not touching the ground")
	gravity = global.gravityStrength
}

else 
{
	//if the player will touch the ground on the next frame
	//at current speed, move the player pixel by pixel
	//until they touch the ground exactly.
	while (!place_meeting(x,y+(sign(vspeed)),obj_ground) && vspeed != 0)
	{
		show_debug_message("vertical pixel move")
		y += sign(vspeed)
	}
	gravity = 0
	vspeed = 0
	canJump = true
	touchingGround = true
	show_debug_message("touching the ground")
}

//wall collision by similar rules to gravity
if (place_meeting(x + hspeed, y, obj_ground) && hspeed != 0)
{
	show_debug_message("wall collision")
   	while (!place_meeting(x+sign(hspeed),y,obj_ground))
	{
		show_debug_message("horizontal pixel move")
		x += sign(hspeed)
	}
	hspeed = -hspeed
}
