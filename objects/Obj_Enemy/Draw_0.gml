/// @description Draw Many Thing
// You can write your code in this editor

draw_self();
if(hp>0){
	draw_set_font(Fnt_HP_Enemy);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_color(x,y-sprite_height/2,hp,c_black,c_black,c_black,c_black,1);
}

if(alarm[0]>0){
	draw_sprite_ext(Spr_PGun_Plasma,-1,x,y,-4,4,0,-1,1);
}