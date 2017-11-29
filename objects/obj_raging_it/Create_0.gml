rspeed=5
spd=1
vspeed = 0
hspeed = 0

melee=0
hit_points=20
cool_down=0
enum e_state
{
	idle,
	chase,
	attack,
}
state = e_state.idle;
lenX=20
lenY=20
dir=0
run_over=0
invis_swap_timer = 0
touchingGround = false
touch_player_damage = 5
just_touched_player = false