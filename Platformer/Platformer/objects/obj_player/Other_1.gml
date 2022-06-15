/// @desc Player collision with room boundaries

// Player reached left side of the room
if (bbox_left < 0 && room_exists(room_previous(room))) {
	room_goto_previous();
}

// Player reached right side of the room
if (bbox_right > room_width && room_exists(room_next(room))) {
	room_goto_next();
}

// Player fell
if (bbox_bottom > room_height) {
	instance_destroy();
	instance_create_layer(xstart, ystart, "Instances", obj_player);
}