/// @description Insert description here
// You can write your code in this editor
event_inherited();
target_x = Obj_Char.x;
target_y = Obj_Char.y;
var distanceToGo = point_distance(x,y,target_x ,target_y);


if(HP <= 0)
{
		state = die;
}
switch(state)
{
	case chase:
		image_blend = c_white;
		sprite_index = spr_bunnies_chase;
		
		
		dir = point_direction(x,y,target_x ,target_y);
		
		if(distanceToGo > attack_range)
		{
			Xspeed = lengthdir_x(enemySpeed,dir);
			Yspeed = lengthdir_y(enemySpeed,dir);
		}
		else
		{
			state = attack;
		}
		
		if(place_meeting(x + Xspeed, y, obj_pEnemy))
		{
	
	
				while(!place_meeting(x+sign(Xspeed),y,obj_pEnemy))
				{
					x += sign(Xspeed);
				}
				Xspeed = 0;
	
		}
		x+=Xspeed;
		

		if(place_meeting(x , y+ Yspeed, obj_pEnemy))
		{

	
				while(!place_meeting(x,y+sign(Yspeed),obj_pEnemy))
				{
					y += sign(Yspeed);
				}
				Yspeed = 0;
	
		}
		
		y += Yspeed;
		
		if(dir > 90) &&(dir <270 )
		{
			image_xscale = -scale;
		}
		else
		{
			image_xscale = scale;
		}
		break;
		
	
		
	case attack:
		image_blend = c_white;
		sprite_index = spr_bunnies_attack;
		if(dir > 90) &&(dir <270 )
		{
			image_xscale = -scale;
		}
		else
		{
			image_xscale = scale;
		}
		

		attack_speed++;
		if(attack_speed >= 1*room_speed)
		{
			state = idle;
			attack_speed=0;
		}
		
		break;
		
	case idle:
		sprite_index = spr_bunnies_idle;
		image_blend = c_white;
		if(dir > 90) &&(dir <270 )
		{
			image_xscale = -scale;
		}
		else
		{
			image_xscale = scale;
		}
		if(distanceToGo > attack_range)
		{
			chase_timer++;
			if(chase_timer >= 0.5*room_speed)
			{
				state = chase;
				chase_timer = 0;
			}
			break;
			
		}
		else
		{
			attack_timer++;
			if(attack_timer >= 1*room_speed)
			{
				state = attack;
				attack_timer = 0;
			}
			break;
			
		}
		break;
	
	case hit:
		image_blend = make_colour_rgb(255, 0, 0);
		sprite_index = spr_bunnies_hit;
		stun_timer++;
		if(stun_timer >= 0.5*room_speed)
		{
			state = chase;
			stun_timer = 0;
		}
		break;
		
	case die:
		if(dir > 90) &&(dir <270 )
		{
			image_xscale = -scale;
		}
		else
		{
			image_xscale = scale;
		}
		sprite_index = spr_bunnies_die;
		image_alpha -= 0.01;
		if(image_alpha <=0)
		{
			instance_destroy();
		}
		break;
		

}
show_debug_message(dir);


