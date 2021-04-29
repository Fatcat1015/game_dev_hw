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

//down 1 left2 right3 up4
dir=1;


