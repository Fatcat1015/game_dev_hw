/// @description Insert description here
// You can write your code in this editor
if(spawn)
{
	
	
	for(i = 0; i<6; i++)
	{
		
		instance_create_layer(x+i*irandom(20),y+i*irandom(20),"Instances",obj_bat)
	}
	spawn = false;
}	