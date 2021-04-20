/// @description Damage enemy!
// You can write your code in this editor


target = instance_nearest(x,y,Obj_Enemy);

if(target!=noone){
target.hp-=damage;
target.condition=effect;
}



instance_destroy(id);
