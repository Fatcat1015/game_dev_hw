/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_xscale = scale;
image_yscale = scale;
switch(state)
{
	case star_chase:
		image_blend = c_white;
		sprite_index = spr_star;
		
		target_x  = Obj_Char.x;
		target_y = Obj_Char.y;

		var distanceToGo = point_distance(x,y,target_x ,target_y);
		dir = point_direction(x,y,target_x ,target_y);
		if(distanceToGo > enemySpeed)
		{
			Xspeed = lengthdir_x(enemySpeed,dir);
			Yspeed = lengthdir_y(enemySpeed,dir);
		}
		else
		{
			Xspeed = lengthdir_x(distanceToGo,dir);
			Yspeed = lengthdir_y(distanceToGo,dir);
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

		if(place_meeting(x , y+Xspeed, Obj_Char))
		{
			state = star_explode;
			
			break;
	
		}
		if(place_meeting(x + Yspeed , y, Obj_Char))
		{
			state = star_explode;
			
			break;
		}
		
		
		
		if(HP <= 0)
		{
			state = star_die;
			break;
		}
		
		break;
		
		
	case star_explode:
		image_blend = c_white;
		sprite_index = spr_explode;
		image_alpha -= 0.05;
		if(image_alpha <= 0)
		{
			instance_destroy();
		}
		break;
		
	case star_die:
		sprite_index = spr_die;
		image_alpha -= 0.01;
		image_blend = make_colour_rgb(255, 15, 2);
		if(image_alpha <= 0)
		{
			instance_destroy();
		}
		break;
	
	case star_hit:
		sprite_index = spr_hit;
		image_blend = make_colour_rgb(251, 255, 73);
		
		if(HP<=0)
		{
			state = star_die;
		}
		
		stun_timer++;
		if(stun_timer >= 0.5*room_speed)
		{
			state = star_chase;
			stun_timer = 0;
		}
		break;
}
	

