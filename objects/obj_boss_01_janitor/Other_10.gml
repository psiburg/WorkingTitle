/// @description Shoot rocket at player
// You can write your code in this editor
var rocket = instance_create_layer(x,y,"Instances",obj_boss_rockets)
var vx = obj_player.x - rocket.x
var vy = obj_player.y - rocket.y
var unit_x
var unit_y
var magnitude = sqrt((vx*vx) + (vy*vy))
if(magnitude > 0)
{
	//calculate the unit vector
	unit_x = vx / magnitude
	unit_y = vy / magnitude
}
rocket.image_angle = point_direction(rocket.x,rocket.y,obj_player.x,obj_player.y)
rocket.hspeed = unit_x * rocket.rocket_speed
rocket.vspeed = unit_y * rocket.rocket_speed