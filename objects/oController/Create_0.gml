/// @description Insert description here
// You can write your code in this editor


alarm[0] = room_speed;
if(countForControl == 1){
	reactive = false
} else {
	reactive = true
}

audio_stop_all();
audio_play_sound(BGM, 10, true);