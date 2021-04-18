/// @description Insert description here
// You can write your code in this editor
target_x = obj_player.x;
target_y = obj_player.y;
var distanceToGo = point_distance(x,y,target_x ,target_y);

if(HP <= 0)
{
		state = die;
}
switch(state)
{
	case chase:

		sprite_index = spr_bunnies_chase;
		
		
		dir = point_direction(x,y,target_x ,target_y);
		
		if(distanceToGo > enemySpeed)
		{
			Xspeed = lengthdir_x(enemySpeed,dir);
			Yspeed = lengthdir_y(enemySpeed,dir);
		}
		if(distanceToGo < attack_range)
		{
			state = idle;
		}

		
		
		if(place_meeting(x + Xspeed, y, obj_collision))
		{
	
	
				while(!place_meeting(x+sign(Xspeed),y,obj_collision))
				{
					x += sign(Xspeed);
				}
				Xspeed = 0;
	
		}
		x+=Xspeed;

		if(place_meeting(x , y+ Yspeed, obj_collision))
		{

	
				while(!place_meeting(x,y+sign(Yspeed),obj_collision))
				{
					y += sign(Yspeed);
				}
				Yspeed = 0;
	
		}
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
		sprite_index = spr_bunnies_attack;
		if(Xspeed > 0)
		{
			image_xscale = 1;
		}
		else
		{
			image_xscale = -1;
		}
		
		if(distanceToGo > attack_range)
		{
			state = idle;
			attack_timer = 0;
		}
		break;
		
	case idle:
		sprite_index = spr_bunnies_idle;
		if(distanceToGo > attack_range)
		{
			chase_timer++;
			if(chase_timer >= 0.5*room_speed)
			{
				state = chase;
				chase_timer = 0;
			}
			
			
		}
		
		if(distanceToGo < attack_range)
		{
			attack_timer++;
			if(attack_timer >= 1*room_speed)
			{
				state = attack;
				attack_timer = 0;
			}
			
			
		}
		

}

