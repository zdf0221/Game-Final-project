/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_set_colour(c_maroon);
draw_set_font(TimerFont);

draw_text(vx + 50, vy + 16, "Time:" + string(self.time_remains));
