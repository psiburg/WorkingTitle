/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x, y + vspeed, obj_ground))
{
   gravity = grav;
}
else
   {
	while (!place_meeting(x,y+sign(vspeed),obj_ground))
	{
		y += sign(vspeed)
	}
	gravity = 0;
	vspeed = 0
    
show_debug_message(image_angle)
if (image_angle != 180 && image_angle != 0) {
	image_angle += 5
}