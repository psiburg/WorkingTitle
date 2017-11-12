/// @description Use powerups
// You can write your code in this editor

if (weapon_upgrade[weapon_index] == "rockets" && can_use_rockets)
{
	var rocket_obj = instance_create_layer(x,y,"Instances",obj_rockets)
	rocket_obj.image_angle = current_aiming_angle
	rocket_obj.speed = rocket_obj.velocity
	rocket_obj.direction = current_aiming_angle
	rocket_obj.image_xscale = 0.5
	rocket_obj.image_yscale = 0.5
	can_use_rockets = false
	alarm[2] = room_speed * rockets_cooldown
}

else if (weapon_upgrade[weapon_index] == "grappling hook" && can_use_hook && !hook_in_progress)
{
	hook_obj = instance_create_layer(x,y,"Instances",obj_grappling_hook)
	hook_obj.image_angle = current_aiming_angle
	hook_obj.speed = hook_obj.velocity
	hook_obj.direction = current_aiming_angle
	hook_in_progress = true
	alarm[4] = room_speed * hook_cooldown
	can_use_hook = false
}

else if (weapon_upgrade[weapon_index] == "invisibility" && can_use_invis)
{
	image_alpha = 0.5
	alarm[0] = room_speed * invis_duration
	alarm[1] = room_speed * invis_cooldown
	can_use_invis = false
	is_invisible = true
}

else if (weapon_upgrade[weapon_index] == "dash" && can_use_dash)
{
	dash_iframes = true
	alarm[3] = room_speed * dash_cooldown
	dash_time = 0
	snapshot_health = health
	can_use_dash = false
}