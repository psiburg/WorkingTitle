/// @description Insert description here
// You can write your code in this editor

if (!obj_player.hook_in_progress)
{
	instance_destroy()
}

if (!collision_rectangle(x-1000,y-1000,x+1000,y+1000,obj_player,false,true))
{
	instance_destroy()
	obj_player.hook_in_progress = false
}