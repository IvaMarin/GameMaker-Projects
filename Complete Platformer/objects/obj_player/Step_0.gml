/// @desc player movement

/// Get Player Input
var key_left = keyboard_check(vk_left) || keyboard_check(ord("A")); // checks if we hold the button
var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_jump = keyboard_check_pressed(vk_space); // checks if we pressed the button


// Calculate Movement 
var move = key_right - key_left;
horizontal_speed = move * walk_speed;
vertical_speed += gravity_force;

if ((can_jump-- > 0) && key_jump) {
	vertical_speed = jump_speed;
	can_jump = 0;
}


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
	if (vertical_speed > 0) can_jump = 5; // setting coyote time
	while (abs(vertical_speed) > 0.1) {
		vertical_speed *= 0.5;
	    if (!place_meeting(x, y + vertical_speed, obj_wall)) y += vertical_speed;	
	}
	vertical_speed = 0;
}
y += vertical_speed;


// Animation
if (!place_meeting(x, y + 1, obj_wall)) { // player is in the air
    sprite_index = spr_player_jump;
	image_speed = 0; // don't animate
	image_index = (sign(vertical_speed) > 0) ?  1 : 0; // check if player is moving down(1) or up(-1)
} 
else {
	sprite_index = (horizontal_speed == 0) ? spr_player : spr_player_run; // is player idle or moving
	image_speed = 1; // animate with x1 speed
}

// flip sprite accordingly
if (horizontal_speed != 0) {
	image_xscale = sign(horizontal_speed);
}