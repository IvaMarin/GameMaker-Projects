/// @desc enemy movement

// Calculate Movement 
vertical_speed += gravity_force;


// Horizontal Collision
if (place_meeting(x + horizontal_speed, y, obj_wall)) {
    while (!place_meeting(x + sign(horizontal_speed), y, obj_wall)) {
	    x += sign(horizontal_speed);	
	}
	/*
	while (abs(horizontal_speed) > 0.1) {
		horizontal_speed *= 0.5;
	    if (!place_meeting(x + horizontal_speed, y, obj_wall)) x += horizontal_speed;	
	}
	*/
	horizontal_speed = -horizontal_speed;
}
x += horizontal_speed;


// Vertical Collision
if (place_meeting(x, y + vertical_speed, obj_wall)) {
	/*
    while (!place_meeting(x, y + sign(vertical_speed), obj_wall)) {
	    y += sign(vertical_speed);
	}
	*/
	while (abs(vertical_speed) > 0.1) {
		vertical_speed *= 0.5;
	    if (!place_meeting(x, y + vertical_speed, obj_wall)) y += vertical_speed;	
	}
	vertical_speed = 0;
}
y += vertical_speed;


// Animation
if (!place_meeting(x, y + 1, obj_wall)) { // enemy is in the air
    sprite_index = spr_enemy_jump;
	image_speed = 0; // don't animate
	image_index = (sign(vertical_speed) > 0) ?  1 : 0; // check if enemy is moving down(1) or up(-1)
} 
else {
	sprite_index = (horizontal_speed == 0) ? spr_enemy : spr_enemy_run; // is enemy idle or moving
	image_speed = 1; // animate with x1 speed
}

// flip sprite accordingly
if (horizontal_speed != 0) {
	image_xscale = sign(horizontal_speed);
}