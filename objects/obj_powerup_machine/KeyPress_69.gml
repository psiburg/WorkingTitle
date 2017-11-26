/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_player) && !selected_item && obj_player.weapons_owned == 1)
{
	powerup_dialog = true
	powerup = instance_create_layer(obj_player.x,obj_player.y-400,"Instances",obj_vending_button)
}

else if (place_meeting(x,y,obj_player) && !selected_item && obj_player.weapons_owned == 2)
{
	powerup_dialog = true
	powerup = instance_create_layer(obj_player.x,obj_player.y-400,"Instances",obj_vending_button)
}

else if (place_meeting(x,y,obj_player) && !selected_item && obj_player.weapons_owned == 3)
{
	powerup_dialog = true
	powerup = instance_create_layer(obj_player.x,obj_player.y-400,"Instances",obj_vending_button)
}

else if (place_meeting(x,y,obj_player) && !selected_item && obj_player.weapons_owned == 4)
{
	upgrade_dialog = true
	rockets_upg = instance_create_layer(obj_player.x,obj_player.y-400,"Instances",obj_vending_button)
	hook_upg = instance_create_layer(obj_player.x,obj_player.y-350,"Instances",obj_vending_button)
	invis_upg = instance_create_layer(obj_player.x,obj_player.y-300,"Instances",obj_vending_button)
	dash_upg = instance_create_layer(obj_player.x,obj_player.y-250,"Instances",obj_vending_button)
}
