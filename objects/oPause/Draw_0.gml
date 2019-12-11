/// @description Insert description here
// You can write your code in this editor


x = camera_get_view_x(view_camera[0]) + 1600;
y = 16;

if(gamePaused == 0) {
	draw_sprite(sPause, 0, x, y);
}
else {
	draw_sprite(sPause, 1, x, y);
}


