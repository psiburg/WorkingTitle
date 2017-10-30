/// @description Damage player on collision
// You can write your code in this editor
if (!justDamagedPlayer)
{
	health -= 10
	alarm[0] = room_speed * 1
	justDamagedPlayer = true
}
//do player hit animation