/// @description Insert description here
// You can write your code in this editor

charControler(moveSpeed,global.weapons[|global.currentWeapon]);
charCamera();
charShooting(global.weapons[|global.currentWeapon]);

//Change Weapons
if(keyboard_check_released(ord("W"))){
	i=global.currentWeapon;
	i++;
	if(i>=ds_list_size(global.weapons))i=0;
	global.currentWeapon=i;	
}

if(global.hp>global.mhp)global.hp=global.mhp;