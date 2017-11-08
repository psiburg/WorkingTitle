/// @description Insert description here
// You can write your code in this editor

var rocket_speed = 15
if (obj_player.x < x)
{
	hspeed = -rocket_speed
}
else
{
	hspeed = rocket_speed
}

if (collision_line(x,y,x+(sign(obj_boss_01_janitor.hspeed)*1500),y-1500,obj_player,false,true)
	&& !obj_boss_01_janitor.standCycleAlarmSet)
{
	vspeed -= rocket_speed
}
image_angle = direction