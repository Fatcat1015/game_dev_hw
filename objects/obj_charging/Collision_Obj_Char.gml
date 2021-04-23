/// @description Insert description here
// You can write your code in this editor
damage_timer++;
if(damage_timer>=0.1*room_speed)
{
	global.hp -= 10;
	damage_timer = 0;
}