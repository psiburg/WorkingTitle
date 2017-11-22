/// @description Insert description here
// You can write your code in this editor

var bullet_obj = instance_create_layer(x,y,"Instances",obj_bullet)
bullet_obj.image_angle = current_aiming_angle
bullet_obj.speed = bullet_obj.velocity
bullet_obj.direction = current_aiming_angle
