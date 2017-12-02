/// @description Change animation states
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true)
//draw_set_color(c_red)
if (hook_in_progress)
{
	draw_line_width(x,y,hook_obj.x,hook_obj.y,3)	
}

//gameover
if (game_state=-1)
{
    draw_text(x,y-50, "You died.");
	sprite_index = spr_player_death
}

else if (hspeed != 0 && touchingGround && !shoot_animation)
{
	sprite_index = spr_player_walk
}

else if (!touchingGround && !shoot_animation)
{
	sprite_index = spr_player_jump
}

else if (shoot_animation)
{
	
	//up 45
	if (current_aiming_angle == 45 || current_aiming_angle == 135)
		sprite_index = spr_player_attack_up_45
	
	//horizontal
	else if (current_aiming_angle == 0 || current_aiming_angle == 180)
		sprite_index = spr_player_attack
	
	//down 45
	else if (current_aiming_angle == 235 || current_aiming_angle == 315)
		sprite_index = spr_player_attack_down_45
	
	//straight up
	else if (current_aiming_angle == 90)
		sprite_index = spr_player_attack_up
		
	else if (current_aiming_angle == 270)
		sprite_index = spr_player_attack_down
}
else if (hspeed == 0 && vspeed == 0)
{
	sprite_index = spr_player_idle
}

if (mouse_x < x && hspeed > 0 && sprite_index != spr_player_jump)
{
	image_speed = -1
}

else
{
	image_speed = 1
}