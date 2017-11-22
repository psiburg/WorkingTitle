/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (global.is_invisible)
{
	hspeed = 0
	invis_swap_timer++
	if(invis_swap_timer = room_speed/2)
	{
		invis_swap_timer = 0
		image_xscale = -image_xscale
	}
}