/// @description Insert description here
// You can write your code in this editor

globalvar time_remains;
time_remains = 120;

alarm[0] = room_speed;

audio_stop_all();
audio_play_sound(BGM, 10, true);