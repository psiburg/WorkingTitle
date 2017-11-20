/// @description HUD icons
// You can write your code in this editor
draw_healthbar(30,25,300,45,health,c_black,c_red,c_green,0,true,true)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
//rockets icons
draw_sprite_ext(hud_powerup_selection,0,60,90,1,1,0,selection_color[0],1)
draw_sprite_ext(hud_rocket_icon,0,60,90,1,1,0,c_white,1)
if (alarm[2] != -1)
{
	draw_text(70,100,string(floor(alarm[2]/room_speed)))
}

//grappling hook icons
if (unlocked_hook)
{
	draw_sprite_ext(hud_powerup_selection,0,130,90,1,1,0,selection_color[1],1)
	draw_sprite_ext(spr_grappling_hook,0,130,90,0.8,0.8,45,c_white,1)
	if (alarm[4] != -1)
	{
		draw_text(140,100,string(floor(alarm[4]/room_speed)))
	}
}
//invisibility icons
if (unlocked_invis)
	{
	draw_sprite_ext(hud_powerup_selection,0,200,90,1,1,0,selection_color[2],1)
	draw_sprite_ext(hud_invisibility_icon,0,200,90,1,1,0,c_white,1)
	if (alarm[1] != -1)
	{
		draw_text(210,100,string(floor(alarm[1]/room_speed)))
	}
}

//dash icon
if (unlocked_dash)
{
	draw_sprite_ext(hud_powerup_selection,0,270,90,1,1,0,selection_color[3],1)
	draw_sprite_ext(hud_dash,0,270,90,1,1,0,c_white,1)
	if (alarm[3] != -1)
	{
		draw_text(280,100,string(floor(alarm[3]/room_speed)))
	}
}