/// @description Insert description here
// You can write your code in this editor
event_inherited();
attack_timer++;
if(attack_timer>=1*room_speed)
{
	instance_create_layer(x,y,"Instances",obj_attack);
	attack_timer = 0;
}

if(instance_exists(obj_bullet))
{
	
	if(obj_bullet.vspeed != 0)
	{
		if(place_meeting(x,y+30,obj_bullet))
		{
	
			var valx = irandom_range(0,1);
			if(valx == 0)
			{
				x+=30;
			}
			else
			{
				x-=30;
			}
			
	
		}
	}

	if(obj_bullet.hspeed != 0)
	{
		
		if(place_meeting(x+30,y,obj_bullet))
		{
			var valy = irandom_range(0,1);
			if(valy == 0)
			{
				y+=30;
			}
			else
			{
				y-=30;
			}
	
		}
	}
	show_debug_message(obj_bullet.hspeed);
}


