/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
if (powerup_dialog && obj_player.weapons_owned == 1)
{
	draw_text_ext_transformed(obj_player.x,obj_player.y-475,"There's only one drink left in the machine...",30,300,2,2,0)
	draw_text(obj_player.x,obj_player.y-400,"Grappling hook")
}

else if (powerup_dialog && obj_player.weapons_owned == 2)
{
	draw_text_ext_transformed(obj_player.x,obj_player.y-475,"There's only one drink left in the machine...",30,300,2,2,0)
	draw_text(obj_player.x,obj_player.y-400,"Invisibility")
}

else if (powerup_dialog && obj_player.weapons_owned == 3)
{
	draw_text_ext_transformed(obj_player.x,obj_player.y-475,"There's only one drink left in the machine...",30,300,2,2,0)
	draw_text(obj_player.x,obj_player.y-400,"Dash")
}


else if (upgrade_dialog)
{
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_ext_transformed(obj_player.x,obj_player.y-475,"Select an cool, refreshing upgrade.",30,300,2,2,0)
	draw_text(obj_player.x,obj_player.y-400,"Rockets: lower cooldown")
	draw_text(obj_player.x,obj_player.y-350,"Grappling hook: no cooldown")
	draw_text(obj_player.x,obj_player.y-250,"Dash: longer travel")
	draw_text(obj_player.x,obj_player.y-300,"Invisibility: shorter cooldown")
}

