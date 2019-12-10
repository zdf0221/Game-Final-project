with(oPassage) {
	image_alpha = 1;
	startRun = false;
}

instance_activate_all(); // activate float board

var player = instance_create_depth(203, 158, 0, oSanta);
player.image_speed = 0;

time_remains -= 10;