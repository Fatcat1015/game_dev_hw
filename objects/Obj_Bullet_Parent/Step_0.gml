/// @description Insert description here
// You can write your code in this editor

pX=Obj_Char.x;
pY=Obj_Char.y;
if(x<pX-816||x>pX+816||y<pY-624||y>pY+624){
	instance_destroy(id);
}

if(hspeed>0)hspeed+=1;
if(hspeed<0)hspeed-=1;
if(vspeed>0)vspeed+=1;
if(vspeed<0)vspeed-=1;


