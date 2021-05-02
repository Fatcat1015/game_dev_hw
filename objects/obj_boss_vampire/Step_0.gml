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
		image_blend = c_white;
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
			instance_create_layer(x,y,"Enemies",obj_attack);
			attack_timer = 0;
		}
		break;


	case summon:
		image_blend = c_white;
		sprite_index = spr_vampire_summon;
		if(distance_to_object(obj_bat) <= 200)
		{
			near = true;
		}
		else
		{
			near = false;
		}
		
		if(!near)
		{

			instance_create_layer(x+50,y-100,"Enemies",obj_bat);
			
		}	
		summon_last++;
		if(summon_last >= 1*room_speed)
		{
			state = normal;
			summon_last = 0;
		}
		break;
	
	case die:
		image_blend = c_white;
		sprite_index = spr_vampire_die;
		image_alpha -= 0.1
		if(image_alpha <= 0)
		{
			instance_destroy();
		}
		break;
		
	case hit:
		sprite_index = spr_vampire_hit;
		image_blend = make_colour_rgb(255, 0, 0);
		stun_timer++;
		if(stun_timer >= 0.5*room_speed)
		{
			state = normal;
			stun_timer = 0;
		}
		break;
		
	
}


