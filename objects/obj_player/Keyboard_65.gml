/// @description Walk left
if ((instance_exists(obj_powerup_machine) && (obj_powerup_machine.upgrade_dialog || obj_powerup_machine.powerup_dialog)) || global.gameOver) { return; }

hspeed = -7