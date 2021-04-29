// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function charControler(charSpeed){
hspeed=0;
vspeed=0;


if keyboard_check(ord("W")){//up
	vspeed=-charSpeed;
	hspeed=0;
	
	if keyboard_check(ord("D")) 	hspeed=charSpeed;
	if keyboard_check(ord("A"))		hspeed=-charSpeed;
}


else if keyboard_check(ord("S")){//down
	vspeed=charSpeed;
	hspeed=0;
	
		if keyboard_check(ord("D")) 	hspeed=charSpeed;
	if keyboard_check(ord("A"))		hspeed=-charSpeed;

}


else if keyboard_check(ord("A")){//left
	hspeed=-charSpeed;
	vspeed=0;

}

else if keyboard_check(ord("D")){//right
	hspeed=charSpeed;
	vspeed=0;

}

}
