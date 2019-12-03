/// @description Insert description here
// You can write your code in this editor
if(autoUp == true){
	if(count == distance){
		start = -1;
	} else if(count == 0){
		start = 1;
	}
	y += eachStep * start;
	count += eachStep * start;
}