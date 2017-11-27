/// @description Collision and AI
/// @description Per-frame calculations
//camera_create()

//call parent
event_inherited()
show_debug_message(hit_points)
//enter stand cycle that gives the player a window to attack
if (hspeed == 0)
{
	walkCycle = false
	if (canFireRockets)
	{
		alarm[1] = room_speed * 1
		event_user(0)
		canFireRockets = false
	}
	if (!standCycleAlarmSet)
	{
		image_xscale = -image_xscale
		alarm[0] = room_speed * 5
		standCycleAlarmSet = true
	}

}

//shoot the player while walking
if (walkCycle && canFireRockets)
{
	event_user(0)
	alarm[1] = room_speed * 2
	canFireRockets = false
}