/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

globalvar key_left;
key_left = keyboard_check(vk_left) or left_clicked;
globalvar key_right;
key_right = keyboard_check(vk_right) or right_clicked;

globalvar key_jump;
key_jump = keyboard_check_pressed(vk_space) or jump_clicked;
//show_debug_message(key_jump);

globalvar key_climb;
key_climb = keyboard_check(vk_up) or climb_clicked;
globalvar key_climb_down;
key_climb_down = keyboard_check(vk_down) or down_clicked;

globalvar xState;// -1 for left. 1 for right. 0 for no moves on x-axis.
xState = key_right - key_left;

var jumpable = 0;
var climbable = 0;
var climbing = 0;

if(place_meeting(x, y + 1, oSurface) or place_meeting(x, y + 1, oPassage)) {
	switch (xState) {
	case 1:
		effect_create_above(ef_smoke, x, y + 70, 0, c_white);
		break;
	case -1:
		effect_create_above(ef_smoke, x + 55, y + 70, 0, c_white);
		break;
	}
	jumpable = 1;
}
	
if(place_meeting(x, y + 1, oStair1)) 
	climbable = 1;

if(place_meeting(x, y + 1, oTrap)) {
	audio_play_sound(Death, 10, false);
	effect_create_above(ef_explosion, x, y, 1, c_red); // explosion
	oController.time_remains -= 10;
	ySpeed = -12;
}

if(place_meeting(x, y + 1, oPassage)) {
	walkSpeed = 10;
}
else {
	walkSpeed = 5;
}


if (xState == -1) {
	image_index = 1;
}
if (xState == 1) {
	image_index = 0;
}

//////////////////////////////////////////////////////////////////////////////////////////////

var xHorizontal = xState * walkSpeed;

if(place_meeting(x + xHorizontal, y, oSurface) or place_meeting(x + xHorizontal, y, oEarth3)) {
	while(!place_meeting(x + xState, y, oSurface) and (!place_meeting(x + xState, y, oEarth3))) { 
		x += xState;
	}
	xHorizontal = 0;
}

if(place_meeting(x + xHorizontal, y, oPassage)) {
	while(!place_meeting(x + xState, y, oPassage)) { 
		x += xState;
	}
	xHorizontal = 0;
}


x += xHorizontal;

if(jumpable && key_jump) {
	ySpeed = jumpSpeed;
	show_debug_message("jumped!");
}

if (climbable && key_climb) {
	climbing = 1;
	self.image_index = 2;
	ySpeed = -5;
}

if (climbable && key_climb_down) {
	climbing = 1;
	self.image_index = 2;
	ySpeed = 5;
}

//////////////////////////////////////////////////////////////////////////////////////////////

ySpeed += grav;

if(place_meeting(x, y + ySpeed, oSurface) && !climbing) {
	while(!place_meeting(x, y + sign(ySpeed), oSurface)) {
		y += sign(ySpeed);
	}
	ySpeed = 0;
}

if(place_meeting(x, y + ySpeed, oPassage)) {
	while(!place_meeting(x, y + sign(ySpeed), oPassage)) {
		y += sign(ySpeed);
	}
	ySpeed = 0;
}

y += ySpeed;

if (y > 800) {
	// fallen
	instance_destroy(self);
	respawn();
}

effect_create_below(ef_snow, x, y, 0, c_white);
