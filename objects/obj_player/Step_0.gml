/// @description Insert description here
// You can write your code in this editor
Speed = 5;

old_xSpd = Xspeed;
old_ySpd = Yspeed;

Xspeed = 0;
Yspeed = 0;

// WASD control
if (keyboard_check(ord("D")))
{
	Xspeed = Speed;
	
}
else if (keyboard_check(ord("A")))
{
	Xspeed = -Speed;
	
}
else
{
	Xspeed = 0;
}


if (keyboard_check(ord("S")))
{
	Yspeed = Speed;	
	
}
else if (keyboard_check(ord("W")))
{
	Yspeed = -Speed;
	
}
else
{
	Yspeed = 0;
	
}


//Collisions 
var canmove;


// checking each pixel iterating through speed value
for (i=1; i<abs(Xspeed); i++)
{
	canmove = true;
	// checks one pixel at a time to see if there will be a collision
	if (place_meeting(x + sign(Xspeed), y, obj_collision)) canmove = false;
	
	// x movement 
	if (canmove) x += sign(Xspeed);
}

//do the same with y!
for (i=1; i<abs(Yspeed); i++)
{
	canmove = true;
	if (place_meeting(x , y+ sign(Yspeed), obj_collision)) canmove = false;
	// y movement
	if (canmove) y += sign(Yspeed);	
}






