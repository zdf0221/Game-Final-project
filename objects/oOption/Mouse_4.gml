/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Clicked, 10, false);

if(gamePaused == 0) {
	instance_deactivate_all(true);
	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	gamePaused = 1;
	menuButton = instance_create_depth(vx+716, vy+314, -1, oButton);
	menuButton.buttonText = "Menu";
	menuButton.onClickAction = GoLevelRoom;
	quitButton = instance_create_depth(vx+716, vy+514, -1, oButton);
	quitButton.buttonText = "Quit";
	quitButton.onClickAction = Exit;
}
else {
	instance_destroy(menuButton);
	instance_destroy(quitButton);
	instance_activate_all();
	gamePaused = 0;
}