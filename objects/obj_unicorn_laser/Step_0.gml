/// @description Insert description here
// You can write your code in this editor
restore_timer++;

target_x = Obj_Char.x;
target_y = Obj_Char.y;



Xspeed = lengthdir_x(chargingSpeed,dir);
Yspeed = lengthdir_y(chargingSpeed,dir);

x += Xspeed;
y += Yspeed;
