/// @description Shoot bullets
// You can write your code in this editor
if (instance_exists(obj_powerup_machine) && obj_powerup_machine.vending_dialog) { return; }

//spawn bullet and shoot in current_aiming_angle direction
var bullet_obj = instance_create_layer(x,y,"Instances",obj_bullet)
bullet_obj.image_angle = current_aiming_angle
bullet_obj.speed = bullet_obj.velocity
bullet_obj.direction = current_aiming_angle
