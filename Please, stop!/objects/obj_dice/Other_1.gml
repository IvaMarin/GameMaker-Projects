/// @desc collision with room boundaries

// Player reached left side of the room
/*
if (bbox_left < 0 && room_exists(room_previous(room))) {
	room_goto_previous();
}
*/

// Player reached right side of the room
if (bbox_right > room_width && room_exists(rm_win)) {
	room_goto(rm_win);
}

// Player fell

if (bbox_bottom > room_height) {
	global._lives--;
	
	instance_destroy();
	
	if (global._lives <= 0) {
		obj_controller.game_over = true;
		
		if (global._score > global._high_score) {
			global._high_score = global._score;
		}
	} else {
		// добавляем шарик на начальную позицию
		instance_create_layer(xstart, ystart, "Dice", obj_dice);
	}
}