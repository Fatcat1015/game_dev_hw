/// @description Insert description here
// You can write your code in this editor

charControler(moveSpeed);
charCamera();
charShooting(global.weapons[|global.currentWeapon]);

//Change Weapons
if(keyboard_check_released(vk_space)){
	i=global.currentWeapon;
	i++;
	if(i>=ds_list_size(global.weapons))i=0;
	global.currentWeapon=i;	
}

if(global.hp>global.mhp)global.hp=global.mhp;