/// @description Insert description here
// You can write your code in this editor
event_inherited();

restore_timer++;

target_x = Obj_Char.x;
target_y = Obj_Char.y;

sprite_index = spr_charging;
		
Xspeed = lengthdir_x(chargingSpeed,dir);
Yspeed = lengthdir_y(chargingSpeed,dir);
if (place_meeting(x + sign(Xspeed), y, Obj_AirWall))
{
	instance_create_layer(x,y,"Enemies",obj_boss_unicorn);
	instance_destroy();
}
	
if (place_meeting(x , y+ sign(Yspeed), Obj_AirWall))
{
	instance_create_layer(x,y,"Enemies",obj_boss_unicorn);
	instance_destroy();
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
	
if(restore_timer >1*room_speed)
{
	instance_create_layer(x,y,"Enemies",obj_boss_unicorn);
	instance_destroy();
	obj_boss_unicorn.state = obj_boss_unicorn.chase;
}


