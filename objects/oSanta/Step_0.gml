/// @description Insert description here
// You can write your code in this editor

globalvar key_left;
key_left = keyboard_check(vk_left);
globalvar key_right;
key_right = keyboard_check(vk_right);
globalvar key_jump;
key_jump = keyboard_check_pressed(vk_space);

var jumpable = 0;

if(place_meeting(x, y + 1, oBlock)) 
	jumpable = 1;

globalvar xState;// -1 for left. 1 for right. 0 for no moves on x-axis.

xState = key_right - key_left;

//////////////////////////////////////////////////////////////////////////////////////////////

var xHorizontal = xState * walkSpeed;

if(place_meeting(x + xHorizontal, y, oBlock)) {
	while(!place_meeting(x + xState, y, oBlock)) { 
		x += xState;
	}
	xHorizontal = 0;
}

x += xHorizontal;

if(jumpable && key_jump) 
	ySpeed = jumpSpeed;

//////////////////////////////////////////////////////////////////////////////////////////////

ySpeed += grav;

if(place_meeting(x, y + ySpeed, oBlock)) {
	while(!place_meeting(x, y + sign(ySpeed), oBlock)) {
		y += sign(ySpeed);
	}
	ySpeed = 0;
}

y += ySpeed;