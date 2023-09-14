/// @desc corpse collision

if (done == 0) {
    // Calculate Movement 
	vertical_speed += gravity_force;


	// Horizontal Collision
	if (place_meeting(x + horizontal_speed, y, obj_wall)) {
		/*
	    while (!place_meeting(x + sign(horizontal_speed), y, obj_wall)) {
		    x += sign(horizontal_speed);	
		}
		*/
		while (abs(horizontal_speed) > 0.1) {
			horizontal_speed *= 0.5;
		    if (!place_meeting(x + horizontal_speed, y, obj_wall)) x += horizontal_speed;	
		}
		horizontal_speed = 0;
	}
	x += horizontal_speed;


	// Vertical Collision
	if (place_meeting(x, y + vertical_speed, obj_wall)) {
		/*
	    while (!place_meeting(x, y + sign(vertical_speed), obj_wall)) {
		    y += sign(vertical_speed);
		}
		*/
		if (vertical_speed > 0) { // when we'll hit the ground
			done = 1;             // stop checking collisions at the end of the step
			image_index = 1;
		}
		while (abs(vertical_speed) > 0.1) {
			vertical_speed *= 0.5;
		    if (!place_meeting(x, y + vertical_speed, obj_wall)) y += vertical_speed;	
		}
		vertical_speed = 0;
	}
	y += vertical_speed;
}