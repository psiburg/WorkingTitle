/// @description Drop faster
// You can write your code in this editor
if ((instance_exists(obj_powerup_machine) && (obj_powerup_machine.upgrade_dialog || obj_powerup_machine.powerup_dialog)) || global.gameOver) { return; }
vspeed += 2