/// @description Insert description here
// You can write your code in this editor
sin_value += (pi * 2) / steps_per_cycle;

if (sin_value >= pi * 2) sin_value = 0;

image_xscale = sin(sin_value);
//image_yscale = sin(sin_value);

image_index = 0;

//if (image_xscale >= 0) image_index = 1;
//if (image_yscale >= 0) image_index = 1;