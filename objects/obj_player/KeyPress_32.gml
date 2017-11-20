/// @description Jump
if (instance_exists(obj_powerup_machine) && (obj_powerup_machine.upgrade_dialog || obj_powerup_machine.powerup_dialog)) { return; }

//only jump if we're allowed to (currently touching the ground)
if (canJump)
	vspeed -= 25

canJump = false
touchingGround = false