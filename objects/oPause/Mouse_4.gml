/// @description Insert description here
// You can write your code in this editor
if(gamePaused == 0) {
	instance_deactivate_all(true);
	gamePaused = 1;
	menuButton = instance_create_depth(room_width / 2 - 150, room_height / 2 - 100, 0, oButton);
	menuButton.buttonText = "Menu";
	menuButton.onClickAction = MainMenu;
	restartButton = instance_create_depth(room_width / 2 - 150, room_height / 2, -1, oButton);
	restartButton.buttonText = "Restart";
	restartButton.onClickAction = restartRoom;
	quitButton = instance_create_depth(room_width / 2 - 150, room_height / 2 + 100, -1, oButton);
	quitButton.buttonText = "Quit";
	quitButton.onClickAction = Exit;
}
else {
	instance_destroy(menuButton);
	instance_destroy(restartButton); 
	instance_destroy(quitButton);
	instance_activate_all();
	gamePaused = 0;
}