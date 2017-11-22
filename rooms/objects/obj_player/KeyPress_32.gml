/// @description Jump
if (instance_exists(obj_powerup_machine) && obj_powerup_machine.vending_dialog) { return; }
//only jump if we're allowed to (currently touching the ground)
if (canJump)
	vspeed -= 15

canJump = false
touchingGround = false