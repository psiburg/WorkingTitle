/// @description Insert description here
// You can write your code in this editor

instance_destroy()

//reset damage trigger from explosion for all enemies
with(obj_enemy_parent)
{
	already_hit_by_explosion = false
}