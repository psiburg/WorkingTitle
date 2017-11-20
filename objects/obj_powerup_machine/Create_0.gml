/// @description Insert description here
// You can write your code in this editor

//for before player has all powerups
selected_powerup = false
powerup_dialog = false

//for when player has all powerups
selected_upgrade = false
upgrade_dialog = false

selected_item = false
//unused?
powerup = noone
rockets = noone
hook = noone
invis = noone
dash = noone

//powerup upgrades
rockets_upgrade = obj_player.rockets_cooldown/2
hook_upgrade = 0.1
invis_upgrade = obj_player.invis_cooldown/2
dash_upgrade = obj_player.dash_max_time*1.75
