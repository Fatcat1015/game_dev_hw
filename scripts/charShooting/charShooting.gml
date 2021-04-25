// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function charShooting(weapon){
	shoot=0;
		switch(weapon){
			
			//Shoot normal bullets
		case "MachineGun":
		num=instance_number(Obj_Bullet_MGun)
		if(keyboard_check(ord("Q"))){
			global.gunTimer++;
			if(global.gunTimer>20){
				global.gunTimer=0;
			shoot=1;
			obj=instance_create_layer(x,y,layer,Obj_Bullet_MGun);
			}
		}
		break;
		
		//Shoot Paralyze Bullets
		case "PlasmaGun":
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
		num=instance_number(Obj_Bullet_VGun)
		if(keyboard_check_released(ord("Q"))){
		if(num<3){
	shoot=1;
		obj=instance_create_layer(x,y,layer,Obj_Bullet_VGun);		
		}
		}
		break;
		
		
		//Unicorn Head (Unfinished)
				case "UnicornHead":
		num=instance_number(Obj_Bullet_MGun)
		if(keyboard_check(ord("Q"))){
			global.gunTimer++;
			if(global.gunTimer>20){
				global.gunTimer=0;
			shoot=1;
			obj=instance_create_layer(x,y,layer,Obj_Bullet_Unicorn);
			}
		}
		break;
		
		}

if(shoot=1){
	if(dir==4){//up
		obj.hspeed=0;
		obj.vspeed=-obj.spd;
	}
	if(dir==1){//down
		obj.hspeed=0;
		obj.vspeed=obj.spd;
	}
	if(dir==2){//left
	obj.hspeed=-obj.spd;
		obj.vspeed=0;
	}
		if(dir==3){//right
		obj.hspeed=obj.spd;
		obj.vspeed=0;
	}
	shoot=0;
}



}