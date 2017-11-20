los=200
rspeed=5
distance_to_player=1000
xPointOfInterest=x+1
yPointOfInterest=y
image_speed=0
spd=1

vspeed = 0
hspeed = 0

melee=0
hit_points=10

enum e_state
{
	idle,
	chase,
	attack
}
state = e_state.idle;

dir=0