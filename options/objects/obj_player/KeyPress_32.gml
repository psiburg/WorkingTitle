/// @description Jump

//only jump if we're allowed to (currently touching the ground)
if (canJump)
	vspeed -= 15

canJump = false
touchingGround = false