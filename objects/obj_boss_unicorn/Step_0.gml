/// @description Insert description here
// You can write your code in this editor
event_inherited();
charge_timer++;
if(charge_timer>3*room_speed)
{
	state = charge;
	instance_create_layer(x,y,"Instances",obj_charging);
	instance_destroy(obj_boss_unicorn);
}

switch(state)
{
	case chase:
		target_x = obj_player.x;
		target_y = obj_player.y;


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
		break;
		
}