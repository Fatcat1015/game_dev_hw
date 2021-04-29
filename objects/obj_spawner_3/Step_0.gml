/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_bat) <= 200)
{
	near = true;
}
else
{
	near = false;
}
if(spawn)&&(!near)
{
	timer ++;
	if(timer >= 0.5*room_speed)
	{
		instance_create_layer(x+irandom(20),y+irandom(20),"Enemies",obj_bat);
		timer = 0;
		count++;
	}
	if(count == 6) 
	{
		spawn = false;
	}
}