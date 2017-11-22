/// @description Insert description here
event_inherited()

hit_points = 50

touchingGround = false
hspeed = 5
canFireRockets = true
left_wall = false

//flags for stand cycle
standCycle = true
standCycleAlarmSet = false

audio_stop_sound(mus_background)
audio_play_sound(mus_boss, 10, true)