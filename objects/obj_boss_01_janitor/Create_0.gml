/// @description Insert description here
event_inherited()

touchingGround = false
hspeed = 5
canFireRockets = true
left_wall = false

//flags for cycles
standCycle = true
walkCycle = false
standCycleAlarmSet = false

audio_stop_sound(mus_background)
audio_play_sound(mus_boss, 10, true)