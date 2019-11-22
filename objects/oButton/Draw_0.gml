/// @description draw button
// You can write your code in this editor

draw_self();

draw_set_font(buttonFont);
draw_set_color(textColor);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x + buttonCenterX, y + buttonCenterY, buttonText, image_xscale, image_yscale, 0);

draw_set_color(c_white);