/// @description Insert description here
// You can write your code in this editor
if(run_over=0)
{
	health=health-10
	run_over=60
}
run_over=run_over-1
if (!just_touched_player)
{
	health -= touch_player_damage
	just_touched_player = true
	//player touch damage cooldown
	alarm[11] = room_speed * 1
}