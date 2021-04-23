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
		sprite_index = spr_bat_chase;
		
		
		dir = point_direction(x,y,target_x ,target_y);
		
		if(distanceToGo > enemySpeed)
		{
			Xspeed = lengthdir_x(enemySpeed,dir);
			Yspeed = lengthdir_y(enemySpeed,dir);
		}
		if(distanceToGo < attack_range)
		{
			state = attack;
		}

		
		
		x += Xspeed;
		y += Yspeed;
		
		
		
		if(Xspeed > 0)
		{
			image_xscale = 1;
		}
		else
		{
			image_xscale = -1;
		}
		break;
		
	
		
	case attack:
		
		sprite_index = spr_bat_attack;
		
		
		if(Xspeed > 0)
		{
			image_xscale = 1;

			
			
		}
		else
		{
			image_xscale = -1;
		}
		
		attack_speed++;
		if(attack_speed >= 1*room_speed)
		{
			state = idle;
			attack_speed=0;
		}
		
		break;
		
	case idle:
		
		sprite_index = spr_bat_idle;
		if(distanceToGo > attack_range)
		{
			chase_timer++;
			if(chase_timer >= 0.5*room_speed)
			{
				state = chase;
				chase_timer = 0;
			}
			
			
		}
		else
		{
			
			attack_timer++;
			if(attack_timer >= 1*room_speed)
			{
				state = attack;
				attack_timer = 0;
			}
			
		}
		break;
		
	case hit:
		sprite_index = spr_bat_hit;
		stun_timer++;
		if(stun_timer >= 0.5*room_speed)
		{
			state = chase;
			stun_timer = 0;
		}
		break;
		
	case die:
		sprite_index = spr_bat_die;
		image_alpha -= 0.1;
		if(image_alpha <=0)
		{
			instance_destroy();
		}
		break;
		

}
show_debug_message(state);