/// @description Insert description here
// You can write your code in this editor
global.hp--;
if(instance_exists(obj_boss_vampire))
{
	obj_boss_vampire.HP++;
}
instance_destroy();