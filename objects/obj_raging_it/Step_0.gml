if (global.is_invisible)
{
	hspeed = 0
	invis_swap_timer++
	if(invis_swap_timer = room_speed/2)
	{
		invis_swap_timer = 0
		image_xscale = -image_xscale
	}
}
else
switch(state)
{
	case e_state.idle:
	{
		
		hspeed=0
		vspeed=(min(7,vspeed+0.05));
		if(distance_to_object(obj_player)<600) state = e_state.chase
	}
	break;
	case e_state.chase:
	{
		if(distance_to_object(obj_player)<250) state = e_state.attack
		dir=sign(obj_player.x-x);
		hspeed=dir*2;
		vspeed=(min(7,vspeed+0.05));
		sprite_index=spr_IT2_walk
	}
	case e_state.attack:
	{
	if(distance_to_object(obj_player)>650) 
		sprite_index=spr_IT2_run
		if(cool_down=0)
		{
		cool_down=75
		dir=sign(obj_player.x-x);
		hspeed=dir*6;
		vspeed=(min(7,vspeed+0.05));
		}
		cool_down=cool_down-1
	}
}

if(hit_points<=0) 
{
	instance_destroy()
	instance_create_layer(x,y,"Instances",obj_explosion)
}

if(hspeed > 0)
		{
			image_xscale = 1
		}
		else if (hspeed < 0)
		{
			image_xscale = -1
		}
		
if (!place_meeting(x, y + 1, obj_ground))
{
	touchingGround = false
}

//if not touching the ground, increase gravity
if (!place_meeting(x, y + vspeed, obj_ground) && !touchingGround)
{
	gravity = global.gravityStrength
}

else 
{
	//if the player will touch the ground on the next frame
	//at current speed, move the player pixel by pixel
	//until they touch the ground exactly.
	while (!place_meeting(x,y+(sign(vspeed)),obj_ground) && vspeed != 0)
	{
		y += sign(vspeed)
	}
	gravity = 0
	vspeed = 0
	touchingGround = true
}

//wall collision by similar rules to gravity
if (place_meeting(x + hspeed, y, obj_ground) && hspeed != 0)
{
   	while (!place_meeting(x+sign(hspeed),y,obj_ground))
	{
		x += sign(hspeed)
	}
	hspeed = 0
}

//fixing a minor collision bug with the player occasionally
//getting stuck in the ground if jumping onto an edge at just the wrong angle
if (place_meeting(x, y, obj_ground) && place_meeting(x, y+1, obj_ground))
{
	y-=1
}