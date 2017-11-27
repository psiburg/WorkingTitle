/// @description Insert description here
// You can write your code in this editor
event_inherited()

//state variables
walk_state = false
stomp_state = false
throw_state = true
walked_to_wall = false
throws_per_throw_state = 3
current_throws = 0
jump_height = 30
jumped_yet = false
jump_pause_duration = room_speed * 2
jump_pause_time = 0

//boss will cycle between stomp and throwing paper
stomp_previous = true

//stomp_location_x = irandom_range()
walk_speed = 6