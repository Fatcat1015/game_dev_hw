/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(HP<=0)
{
	state = die;
}
switch(state)
{
	case normal:
		sprite_index = spr_vampire;
		summon_timer++;
		if(summon_timer >= 5*room_speed)
		{
			state = summon;
			summon_timer = 0;
		}
		attack_timer++;
		if(attack_timer>=1*room_speed)
		{
			instance_create_layer(x,y,"Instances",obj_attack);
			attack_timer = 0;
		}
		break;

/*
		if(instance_exists(Obj_Bullet_Parent))
		{
	
			if(Obj_Bullet_Parent.vspeed != 0)
			{
				
				if(place_meeting(x,y+30,Obj_Bullet_Parent))
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

			if(Obj_Bullet_Parent.hspeed != 0)
			{
		
				if(place_meeting(x+30,y,Obj_Bullet_Parent))
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
	
		}

		break;
	*/
	case summon:
		for(i = 0; i<2; i++)
		{
			instance_create_layer(x+5*i,y+5*i,"Instances",obj_bat);
		}
		state = normal;
		break;
	
	case die:
		sprite_index = spr_vampire_die;
		image_alpha -= 0.1
		if(image_alpha <= 0)
		{
			instance_destroy();
		}
		break;
		
	case hit:
		sprite_index = spr_vampire_hit;
		stun_timer++;
		if(stun_timer >= 0.5*room_speed)
		{
			state = normal;
			stun_timer = 0;
		}
		break;
		
	
}


