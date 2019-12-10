/// @description Insert description here
// You can write your code in this editor

var dev = 0;
var leftPressed = 0;
for(dev=0;dev<5;dev+=1)
{
	var mx = device_mouse_x(dev);
	var my = device_mouse_y(dev);

	var mb = device_mouse_check_button(dev, mb_left);
	if(mb == 1 && position_meeting(mx, my, oRight)){
		leftPressed = 1;
	} else {
		
	}	
}
if(leftPressed == 1){
	image_index = 1;
	right_clicked = true;
} else {
	image_index = 0;
	right_clicked = false;
}

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
x = vx+354
y = vy+676