/// @description Insert description here
// You can write your code in this editor


x = camera_get_view_x(view_camera[0]) + 1600;
y = 50;

if(gamePaused == 0) {
	draw_sprite(sOption, 0, x, y);
}
else {
	draw_sprite(sOption, 1, x, y);
}


