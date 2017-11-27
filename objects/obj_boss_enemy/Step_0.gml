/// @description Insert description here
// You can write your code in this editor
event_inherited()

//destroy hidden door to let the player move on
if (hit_points <= 0)
{
	camera_set_view_target(view_camera[0],obj_player)
	show_debug_message("set camera")
	instance_destroy(obj_hidden_door,true)
	audio_stop_sound(mus_boss)
	audio_play_sound(mus_background, 10, true)
}