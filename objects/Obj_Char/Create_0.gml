/// @description Basics
// You can write your code in this editor

//Basic Parameters
global.mhp = 100;
global.hp = 10;
global.weapons=ds_list_create();
ds_list_add(global.weapons,"NoWeapon");
ds_list_add(global.weapons,"FireThrower");
global.currentWeapon=0;
crg=0;

//Private
moveSpeed=4;

//down 1 left2 right3 up4
dir=1;


