/// @description Insert description here
// You can write your code in this editor
if(xcount > 0){
	x += step;
	xcount -= step;
} else if(ycount > 0){
	y += step;
	ycount -=step;
} else if(ycount == 0){
	room_goto(levelRoom);
}