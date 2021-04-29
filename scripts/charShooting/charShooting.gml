// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function charShooting(weapon){
	shoot=0;
		switch(weapon){
			
		case "NoWeapon":
		imgFront=Spr_Char_Front;
		imgBack=Spr_Char_Back;
		imgHori=Spr_Char_Hori;
		break;
			
			//Shoot normal bullets
		case "MachineGun":
				imgFront=Spr_MGun_Front;
		imgBack=Spr_MGun_Back;
		imgHori=Spr_MGun_Hori;
		
		if(keyboard_check(vk_up)||keyboard_check(vk_down)||keyboard_check(vk_left)||keyboard_check(vk_right)){
			if(keyboard_check(vk_up))dir=5;
			if(keyboard_check(vk_down))dir=1;
			if(keyboard_check(vk_left))dir=3;
			if(keyboard_check(vk_right))dir=7;
			global.gunTimer++;
			if(global.gunTimer>20){
				global.gunTimer=0;
			shoot=1;
			obj=instance_create_layer(x,y,layer,Obj_Bullet_MGun);
			}
		}else {global.gunTimer=19;}
		break;
		
		case "UnicornHead":
		
						//Unicorn Head (Unfinished)
			imgFront=Spr_UHead_Front;
		imgBack=Spr_UHead_Back;
		imgHori=Spr_UHead_Hor;
		
	if(keyboard_check(vk_up)||keyboard_check(vk_down)||keyboard_check(vk_left)||keyboard_check(vk_right)){
			if(keyboard_check(vk_up))dir=5;
			if(keyboard_check(vk_down))dir=1;
			if(keyboard_check(vk_left))dir=3;
			if(keyboard_check(vk_right))dir=7;
			global.gunTimer++;
			if(global.gunTimer>20){
				global.gunTimer=0;
			shoot=1;
			obj=instance_create_layer(x,y,layer,Obj_Bullet_Unicorn);
			}
		}else {global.gunTimer=19;}
		break;
		
		
		
		//Shoot Paralyze Bullets
		case "PlasmaGun":
			imgFront=Spr_PGun_Front;
		imgBack=Spr_PGun_Back;
		imgHori=Spr_PGun_Hori;
		
		num=instance_number(Obj_Bullet_PGun)
		if(keyboard_check_released(ord("Q"))){
		if(num<3){
	shoot=1;
		obj=instance_create_layer(x,y,layer,Obj_Bullet_PGun);		
		}
		}
		break;
		
		//Shoot Paralyze Bullets
		case "FireThrower":
			imgFront=Spr_FGun_Front;
		imgBack=Spr_FGun_Back;
		imgHori=Spr_FGun_Hori;
		
		num=instance_number(Obj_Bullet_FGun)
		if(keyboard_check(ord("Q"))){
		if(Obj_Char.crg<5*60)Obj_Char.crg++;
			
		} else if(keyboard_check_released(ord("Q"))){
		if(num<4){
		shoot=1;
		obj=instance_create_layer(x,y,layer,Obj_Bullet_FGun);
		obj.image_xscale=1+Obj_Char.crg/100;
		obj.image_yscale=1+Obj_Char.crg/100;
		obj.damage=int64(Obj_Char.crg/10);
		Obj_Char.crg=0;				
		}
		}
		break;
		
			//Shoot drain bullets
		case "VampireGun":
			imgFront=Spr_VGun_Front;
		imgBack=Spr_VGun_Back;
		imgHori=Spr_VGun_Hori;
		
		num=instance_number(Obj_Bullet_VGun)
		if(keyboard_check_released(ord("Q"))){
		if(num<3){
	shoot=1;
		obj=instance_create_layer(x,y,layer,Obj_Bullet_VGun);		
		}
		}
		break;
		
		

		
		}

if(shoot=1){
	if(dir==5){//up
		obj.hspeed=0;
		obj.vspeed=-obj.spd;
	}
	if(dir==1){//down
		obj.hspeed=0;
		obj.vspeed=obj.spd;
	}
	if(dir==3){//left
	obj.hspeed=-obj.spd;
		obj.vspeed=0;
	}
		if(dir==7){//right
		obj.hspeed=obj.spd;
		obj.vspeed=0;
	}
	shoot=0;
}

scale=0.125;
	if(dir==5){//up
			sprite_index=imgBack;
	image_xscale=scale;
	image_yscale=scale;
	}
	if(dir==1){//down
		sprite_index=imgFront;
	image_xscale=scale;
	image_yscale=scale;
	}
	if(dir==3){//left
	sprite_index=imgHori;
	image_xscale=scale;
	image_yscale=scale;
	}
	if(dir==7){//right
			sprite_index=imgHori;
	image_xscale=-scale;
	image_yscale=scale;
	}




}