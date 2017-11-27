/// @description Player touch damage
// You can write your code in this editor
if (!just_touched_player)
{
	health -= touch_player_damage
	just_touched_player = true
	//player touch damage cooldown
	alarm[11] = room_speed * 1
}