/// @description Initial player settings

vspeed = 0
hspeed = 0
canJump = true
touchingGround = false

//weapon upgrades
weapon_upgrade[0] = "rockets"
weapon_upgrade[1] = "grappling hook"
weapon_upgrade[2] = "invisibility"
weapon_upgrade[3] = "dash"
weapon_index = 0

//weapon use flags
can_use_rockets = true
can_use_hook = true
can_use_invis = true
can_use_dash = true

//powerup cooldowns
rockets_cooldown = 10
hook_cooldown = 5
invis_cooldown = 20
dash_cooldown = 5

//parallel array to weapon upgrades
selection_color[0] = c_red
selection_color[1] = c_green
selection_color[2] = c_green
selection_color[3] = c_green

//aiming
unit_x = 1 
unit_y = 0
image_index = 1
image_speed = 0
current_aiming_angle = 0

hook_in_progress = false