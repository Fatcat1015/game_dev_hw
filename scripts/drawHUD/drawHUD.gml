// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function drawHUD(weapon){
//Draw HP
	draw_set_font(Fnt_HP);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	text="HP: "+string(global.hp)+" / "+string(global.mhp);
	draw_text_color(24,36,text,c_black,c_black,c_black,c_black,1);

//Draw Weapons
Y=camera_get_view_height(view_camera[0])*2-48;

switch(weapon){	
	
	case "NoWeapon":
	wGraphic=Spr_Empty;
	break;
	
	case "MachineGun":
	wGraphic=Spr_Mgun_icon;
	break;
	
	case "PlasmaGun":
	wGraphic=Spr_Pgun_icon;
	break;
	
	case "FireThrower":
	wGraphic=Spr_Fgun_icon;
	text=string(int64(Obj_Char.crg/3))+"%";
	draw_text_color(144,Y-48,text,c_red,c_red,c_black,c_black,1);
	break;
	
	case "VampireGun":
	wGraphic=Spr_Vgun_icon;
	break;
	
	case "UnicornHead":
	wGraphic=Spr_UHead_icon;
	break;
}


draw_sprite_ext(wGraphic,-1,72,Y-24,4,4,0,-1,1);
draw_text_color(144,Y,weapon,c_black,c_black,c_black,c_black,1);
}