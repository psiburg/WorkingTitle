/// @description Collision and AI
/// @description Per-frame calculations
event_inherited()
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

//wall collision by similar rules to gravity
if (place_meeting(x + hspeed, y, obj_ground) && hspeed != 0)
{
   	while (!place_meeting(x+sign(hspeed),y,obj_ground))
	{
		x += sign(hspeed)
	}
	hspeed = 0
}

//enter stand cycle that gives the player a window to attack
if (hspeed == 0)
{
	if (canFireRockets)
	{
		alarm[1] = room_speed * 1.5
		instance_create_layer(x,y,"Instances",obj_rockets)
		canFireRockets = false
	}
	if (!standCycleAlarmSet)
	{
		image_xscale = -image_xscale
		alarm[0] = room_speed * 5
		standCycleAlarmSet = true
	}

}

var rocket_fire_h = collision_rectangle(x+(sign(hspeed)*900),y-20,x,y+20,obj_player,false,true)
var rocket_fire_angle = collision_line(x,y,x+(sign(hspeed)*1500),y-1500,obj_player,false,true)
//shoot the player if the player is in line with the boss
if ((rocket_fire_h || rocket_fire_angle) && canFireRockets)
{
	instance_create_layer(x,y,"Instances",obj_rockets)
	alarm[1] = room_speed * 2
	canFireRockets = false
}

show_debug_message(hit_points)