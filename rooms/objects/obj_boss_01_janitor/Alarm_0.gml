/// @description Move again after walk cycle
// You can write your code in this editor


if (left_wall)
{
	hspeed = 5
}

	
if (!left_wall)
{
	hspeed = -5
}
left_wall = !left_wall
standCycle = false
standCycleAlarmSet = false