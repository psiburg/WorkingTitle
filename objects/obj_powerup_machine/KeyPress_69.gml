/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player) && !selected_powerup)
{
	vending_dialog = true
	rockets = instance_create_layer(obj_player.x,obj_player.y-400,"Instances",obj_vending_button)
	hook = instance_create_layer(obj_player.x,obj_player.y-350,"Instances",obj_vending_button)
	invis = instance_create_layer(obj_player.x,obj_player.y-300,"Instances",obj_vending_button)
	dash = instance_create_layer(obj_player.x,obj_player.y-250,"Instances",obj_vending_button)
}