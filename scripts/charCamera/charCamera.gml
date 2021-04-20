// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function charCamera(){
	//make camera can't get out of room
if(x<0) x=0;
if(x>room_width) x=room_width;
if(y<0) y=0;
if(y>room_height) y=room_height;

//cameras

//camera positions
camWidth=camera_get_view_width(view_camera[0]);
camHeight=camera_get_view_height(view_camera[0]);

camX=x-camWidth/2;
camY=y-camHeight/2;

//stop camera at edge
if(x<camWidth/2){
	camX=0;
}

if(x>room_width-camWidth/2){
	camX=room_width-camWidth;
}

if(y<camHeight/2){
	camY=0;
}

if(y>room_height-camHeight/2){
	camY=room_height-camHeight;
}
//set camera
camera_set_view_pos(view_camera[0],camX,camY);	
}