switch(state)
{
	case e_state.idle:
	{
		hspeed=0
		vspeed=(min(7,vspeed+0.05));
		if(distance_to_object(obj_player)<150) state=e_state.chase;
	}
	break;
	case e_state.chase:
	{ 
		dir=sign(obj_player.x-x);
		hspeed=dir*2;
		vspeed=(min(7,vspeed+0.05));
		if(distance_to_object(obj_player)>75) state=e_state.attack;
	}
	break;
	case e_state.attack:
	{
		dir=sign(obj_player.x-x);
		hspeed=dir*6;
		vspeed=(min(7,vspeed+0.05));
		if(distance_to_object(obj_player)>200) state = e_state.idle;
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
//Player Collision
if (!place_meeting(x, y + vspeed, obj_player))
{
	while (!place_meeting(x,y+(sign(vspeed)),obj_player) && vspeed != 0)
	{
		y += sign(vspeed)
	}
	gravity = 0
	vspeed = 0
}
if (place_meeting(x + hspeed, y, obj_player) && hspeed != 0)
{
   	while (!place_meeting(x+sign(hspeed),y,obj_player))
	{
		x += sign(hspeed)
	}
	hspeed = 0
}

if(hit_points<=0) instance_destroy()

if(hspeed > 0)
		{
			image_xscale = -1
		}
		else if (hspeed < 0)
		{
			image_xscale = 1
		}