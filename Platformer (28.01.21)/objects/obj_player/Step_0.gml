/// @desc Core player logic

// Get player inputs

key_right = keyboard_check(vk_right); // returns true or false
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement

// var are tmp variables 
var _move = key_right - key_left; // 1 to move right or (-1) to move left 

hsp = _move * walksp; // horizontal speed (4 pixels)

vsp += grv; // gravity acceleration

// Jump movement 
if (place_meeting(x, y + 1, obj_wall)) && (key_jump) { // if we're standing on wall and space is pressed
	vsp = -jumpsp; // jump
}

// Horizontal collision check
if (place_meeting(x + hsp, y, obj_wall)) { // if we are near a wall
	while (!place_meeting(x + sign(hsp), y, obj_wall)) { // while we're not hitting a wall by 1 pxl
		x += sign(hsp); // allow to move by 1 pxl
	}
	hsp = 0; // don't allow to move
}

x += hsp; // regular horizontal movement

// Vertical collision check
if (place_meeting(x, y + vsp, obj_wall)) { // if we are near a wall
	while (!place_meeting(x, y + sign(vsp), obj_wall)) { // while we're not hitting a wall by 1 pxl
		y += sign(vsp); // allow to move by 1 pxl
	}
	vsp = 0; // don't allow to move
}

y += vsp; // regular horizontal movement

// Animation

if (!place_meeting(x, y + 1, obj_wall)) { // if we're not standing on wall
	sprite_index = spr_playerAir;
	image_speed = 0; // not animate
	
	if (vsp > 0) { // if we're moving down 
		image_index = 1; //falling spr
	} else {
		image_index = 0; //going up spr
	}
} else { // we're standing on wall
	
	image_speed = 1; // return animation
	
	if (hsp == 0) { // if player is idle
		sprite_index = spr_player;
	} else { // if moving
		sprite_index = spr_playerRun;
	}
}

if (hsp != 0) { // if we're moving
	image_xscale = sign(hsp); // change the direction accordingly
}

