/// @description Basics
// You can write your code in this editor

//Basic Parameters
global.mhp = 100;
global.hp = 100;
global.weapons=ds_list_create();
global.gunTimer=19;
ds_list_add(global.weapons,"NoWeapon");

global.currentWeapon=0;
crg=0;

//Private
moveSpeed=3.3;

dir=0;

scale=0.125;

		imgFront=Spr_Char_Front;
		imgBack=Spr_Char_Back;
		imgHori=Spr_Char_Hori;
		
			sprite_index=imgFront;
	image_xscale=scale;
	image_yscale=scale;
		
		


