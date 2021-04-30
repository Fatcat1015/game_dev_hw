/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(obj_unicorn_attribute.U_HP<=0)
{
	state = die;
}

switch(state)
{
	case chase:
		charge_timer++;
		if(charge_timer>=2.5*room_speed)
		{
			state = charge;
			charge_timer = 0;
			
		}
		attack_timer++;
		if(attack_timer >= 1*room_speed)
		{
			state = attack;
			attack_timer = 0;
		}
		target_x = Obj_Char.x;
		target_y = Obj_Char.y;


		var distanceToGo = point_distance(x,y,target_x ,target_y);


		sprite_index = spr_unicorn;
		
		
		dir = point_direction(x,y,target_x ,target_y);
		
		if(distanceToGo > enemySpeed)
		{
			Xspeed = lengthdir_x(enemySpeed,dir);
			Yspeed = lengthdir_y(enemySpeed,dir);
		}
		x += Xspeed;
		y += Yspeed;
		
		if(Xspeed >0)
		{
			image_xscale = scale;
		}
		else
		{
			image_xscale = -scale;
		}
		
		
		
		break;
		
	case charge:
		instance_create_layer(x,y,"Enemies",obj_charging);
		instance_destroy(obj_boss_unicorn);
		chase_timer++;
		if(chase_timer >= 1*room_speed)
		{
			state = chase;
			chase_timer = 0;
		}
		
	case attack:
		instance_create_layer(x,y,"Enemies",obj_unicorn_attack);
		state = chase;
		break;
		
	case hit:
		charge_timer++;
		sprite_index = spr_unicorn_hit;
		stun_timer++;
		if(stun_timer >= 0.5*room_speed)
		{
			state = chase;
			stun_timer = 0;
		}
		break;
	
	case die:
		sprite_index = spr_unicorn_die;
		image_alpha -= 0.1;
		if(image_alpha <=0)
		{
			instance_destroy();
		}
		break;
		
		
	
		
}