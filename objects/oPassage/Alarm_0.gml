/// @description Insert description here
// You can write your code in this editor


	if(timeLimit == true){
		alarm[0] = room_speed;
		if(oSanta.x - x >= 5){
			startRun = true
		}
		if(startRun == true){
			image_alpha -= value;
			if(image_alpha < 0.25){
				startRun = false;
				image_alpha = 1;
				instance_deactivate_object(self);
				//instance_destroy(self)
			}
		}
}

