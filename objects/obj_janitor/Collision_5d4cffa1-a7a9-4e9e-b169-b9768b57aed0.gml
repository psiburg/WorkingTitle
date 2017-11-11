/// @description Insert description here
// You can write your code in this editor
health_ = health_ - other.damage

instance_destroy(obj_bullet)

if(health_ <= 0){
	instance_destroy()
	instance_destroy(obj_mop)	
	}
	
	