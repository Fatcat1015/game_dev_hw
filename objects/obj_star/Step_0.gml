/// @description Insert description here
// You can write your code in this editor
target_x  = obj_player.x;
target_y = obj_player.y;

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

if(place_meeting(x , y+Xspeed, obj_player))
{
	instance_destroy();
	
}
if(place_meeting(x + Yspeed , y, obj_player))
{
	instance_destroy();
	
}
