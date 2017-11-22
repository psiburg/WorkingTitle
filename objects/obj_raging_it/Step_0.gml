event_inherited()

switch(state)
{
	case e_state.idle:
	{
		hspeed=0
		vspeed=(min(7,vspeed+0.05));
		if(distance_to_object(obj_player)<550) state=e_state.chase;
	}
	break;
	case e_state.chase:
	{
		dir=sign(obj_player.x-x);
		hspeed=dir*2;
		vspeed=(min(7,vspeed+0.05));
		if(distance_to_object(obj_player)<250) state=e_state.attack;
		sprite_index=spr_IT2_walk
	}
	break;
	case e_state.attack:
	{
		sprite_index=spr_IT2_run
		if(cool_down=0)
		{
		cool_down=75
		dir=sign(obj_player.x-x);
		hspeed=dir*6;
		vspeed=(min(7,vspeed+0.05));
		}
		cool_down=cool_down-1
		if(distance_to_object(obj_player)>600) state = e_state.idle;
	}
	break;
}

//Hozontal && vertical collision
if (!place_meeting(x, y + vspeed, obj_ground))
{
	while (!place_meeting(x,y+(sign(vspeed)),obj_ground) && vspeed != 0)
	{
		y += sign(vspeed)
	}
	gravity = 0
	vspeed = 0
}
if (place_meeting(x + hspeed, y, obj_ground) && hspeed != 0)
{
   	while (!place_meeting(x+sign(hspeed),y,obj_ground))
	{
		x += sign(hspeed)
	}
	hspeed = 0
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