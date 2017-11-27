/// @description Insert description here
// You can write your code in this editor

event_inherited()

//walk to the wall then throw paperwork at the player
if (throw_state && !walked_to_wall)
{
	
	sprite_index = spr_boss_02_manager_walk
	if (!place_meeting(x+(image_xscale*walk_speed*5),y,obj_ground) && !walked_to_wall)
	{
		hspeed = image_xscale*walk_speed
		show_debug_message("walking to wall")
		return
	}
	else if (place_meeting(x-(walk_speed*5),y,obj_ground))
	{
		image_xscale = 1
		show_debug_message("left wall")
	}
	else if (place_meeting(x+(walk_speed*5),y,obj_ground))
	{
		image_xscale = -1
		show_debug_message("right wall")
	}
	hspeed = 0
	walked_to_wall = true
	image_index = 0
	sprite_index = spr_boss_02_manager_attack
}

if (stomp_state && !jumped_yet)
{
	hspeed = irandom_range(2,12)*image_xscale
	vspeed -= jump_height
	jumped_yet = true
	sprite_index = spr_boss_02_manager_jump
	show_debug_message("jumped")
}

else if (stomp_state && jumped_yet && touchingGround)
{
	show_debug_message("landed, waiting")
	sprite_index = spr_boss_02_manager_idle
	if (jump_pause_time == 0)
	{
		var cloud_left = instance_create_layer(bbox_left,bbox_bottom-10,"Instances",obj_boss_02_manager_dust_cloud)
		var cloud_right = instance_create_layer(bbox_right,bbox_bottom-10,"Instances",obj_boss_02_manager_dust_cloud)
		cloud_left.image_xscale *= -1
		cloud_left.hspeed = -cloud_left.cloud_speed
		cloud_right.hspeed = cloud_right.cloud_speed
	}
	jump_pause_time++
	if (jump_pause_time >= jump_pause_duration)
	{
		stomp_state = false
		throw_state = true
		walked_to_wall = false
		jump_pause_time = 0
		sprite_index = spr_boss_02_manager_walk
		y-=1
		show_debug_message("idle after jump over")
	}
}
