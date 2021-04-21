/// @description Insert description here
// You can write your code in this editor
event_inherited();


switch(state)
{
	case chase:
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
			image_xscale = 1;
		}
		else
		{
			image_xscale = -1;
		}
		
		charge_timer++;
		
		break;
		
	case charge:
		instance_create_layer(x,y,"Instances",obj_charging);
		instance_destroy(obj_boss_unicorn);
		chase_timer++;
		if(chase_timer >= 1*room_speed)
		{
			state = chase;
			chase_timer = 0;
		}
		
	case attack:
		instance_create_layer(x,y,"Instances",obj_unicorn_laser);
		state = chase;
		break;
	
		
}