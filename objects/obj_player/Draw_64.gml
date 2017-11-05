/// @description Insert description here
// You can write your code in this editor
draw_healthbar(30,25,200,45,health,c_black,c_red,c_green,0,true,true)
selection_color[current_weapon] = c_red

//rockets icons
draw_sprite_ext(hud_powerup_selection,0,60,90,1,1,0,selection_color[0],1)
draw_sprite_ext(hud_rocket_icon,0,60,90,1,1,0,c_white,1)

//grappling hook icons
draw_sprite_ext(hud_powerup_selection,0,130,90,1,1,0,selection_color[1],1)

//invisibility icons
draw_sprite_ext(hud_powerup_selection,0,200,90,1,1,0,selection_color[2],1)
draw_sprite_ext(hud_invisibility_icon,0,200,90,1,1,0,c_white,1)

//dash icon
draw_sprite_ext(hud_powerup_selection,0,270,90,1,1,0,selection_color[3],1)
