// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function charControler(charSpeed,weapon){
hspeed=0;
vspeed=0;

switch(weapon){
		case "NoWeapon":
		imgFront=Spr_Char_Front;
		imgBack=Spr_Char_Back;
		imgHori=Spr_Char_Hori;
		break;

		case "MachineGun":
		imgFront=Spr_MGun_Front;
		imgBack=Spr_MGun_Back;
		imgHori=Spr_MGun_Hori;
		break;
		

		case "PlasmaGun":
		imgFront=Spr_PGun_Front;
		imgBack=Spr_PGun_Back;
		imgHori=Spr_PGun_Hori;
		break;
		

		case "FireThrower":
		imgFront=Spr_FGun_Front;
		imgBack=Spr_FGun_Back;
		imgHori=Spr_FGun_Hori;
		break;
		

		case "VampireGun":
		imgFront=Spr_VGun_Front;
		imgBack=Spr_VGun_Back;
		imgHori=Spr_VGun_Hori;
		break;		
		}
		
if keyboard_check(vk_up){//up
	dir=4;
	vspeed=-charSpeed;
	hspeed=0;


}

if keyboard_check(vk_down){//down
	dir=1;
	vspeed=charSpeed;
	hspeed=0;

}

if keyboard_check(vk_left){//left
	dir=2;
	hspeed=-charSpeed;
	vspeed=0;

}

if keyboard_check(vk_right){//right
	dir=3;
	hspeed=charSpeed;
	vspeed=0;

}

	if(dir==4){//up
			sprite_index=imgBack;
	image_xscale=1;
	}
	if(dir==1){//down
		sprite_index=imgFront;
	image_xscale=1;
	}
	if(dir==2){//left
	sprite_index=imgHori;
	image_xscale=1;
	}
	if(dir==3){//right
			sprite_index=imgHori;
	image_xscale=-1;
	}

}