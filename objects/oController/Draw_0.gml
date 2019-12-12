/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_set_colour(c_maroon);
draw_set_font(TimerFont);
if(reactive == true){
	vx += 50;
	vy += 25
}
draw_text(vx+50, vy+25, "Time:" + string(self.time_remains));
show_debug_message(reactive);
show_debug_message("hhh")