/// @description Insert description here
// You can write your code in this editor
event_inherited()
//Declared Variables
vsp = 0;
hsp = 0;
grav = 1.9;
unit_x = 3;
unit_y = 0;
dir = 0;
health_ = 10


//States
move_m = 0;
attack_m = 1;
state_m = move_m;


can_shoot = 0
bullet_cooldown_ = room_speed/2;
alarm[0] = bullet_cooldown_;