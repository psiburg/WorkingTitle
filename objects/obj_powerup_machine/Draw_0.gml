/// @description Insert description here
// You can write your code in this editor
draw_self()

if (vending_dialog)
{
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_ext_transformed(obj_player.x,obj_player.y-475,"Select your cool, refreshing powerup.",30,300,2,2,0)
	draw_text(obj_player.x,obj_player.y-400,"Rockets: lower cooldown")
	draw_text(obj_player.x,obj_player.y-350,"Grappling hook: no cooldown")
	draw_text(obj_player.x,obj_player.y-250,"Dash: longer travel")
	draw_text(obj_player.x,obj_player.y-300,"Invisibility: shorter cooldown")
}
