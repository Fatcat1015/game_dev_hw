/// @description Insert description here
// You can write your code in this editor
if(spawn)
{
	spawn = false;
	for(i = 0; i<5; i++)
	{
		
		instance_create_layer(x+i*irandom(20),y+i*irandom(20),"Enemies",obj_bunnies)
	}
}