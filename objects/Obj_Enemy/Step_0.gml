/// @description Insert description here
// You can write your code in this editor

if(hp<=0){
	instance_destroy(id);
}


show_debug_message(condition);

//Paralyze effect
if(condition=="Paralyze"){
	alarm[0]=120;
	condition="None";
}

if(alarm[0]>0){
//Write paralyze here
}

//Vampire Effect
if(condition=="Drain"){
	if(hp<=mhp*0.1){
		global.hp+=hp;
		hp=0;
	}
	else{condition="None"}
}

