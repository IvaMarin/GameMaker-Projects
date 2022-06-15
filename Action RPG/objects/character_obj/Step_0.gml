// Section: get player input

// ord("A") - to use "A" letter as key
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));  
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

key_activate = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(vk_shift);
key_item = keyboard_check_pressed(vk_control) or keyboard_check(ord("I"));

/*
	tells us the angle between two coordinates -- point_direction(x1, y1, x2, y2)
	key_right - key_left -- 1 - 0 -> right
	key_right - key_left -- 0 - 1 -> left
	key_down - key_up    -- 1 - 0 -> down
	key_down - key_up    -- 0 - 1 -> up
*/
input_direction = point_direction(0, 0, key_right - key_left, key_down - key_up);

// magnitude -- величина
// this variable shows that we actually want to move in some direction
// if it is 1 then we move, if 0 - not
input_magnitude = (key_right - key_left != 0) or (key_down - key_up != 0);

// Section: movement

// lengthdir_x() returns length of vector projection on X axis 
h_speed = lengthdir_x(input_magnitude * walk_speed, input_direction);
v_speed = lengthdir_y(input_magnitude * walk_speed, input_direction);

x += h_speed;
y += v_speed;

// Section: update sprite index

var old_sprite = sprite_index;

if (input_magnitude != 0) {
	direction = input_direction;
	sprite_index = sprite_run;
} else {
	sprite_index = sprite_idle;
}

// if we changed animation then reset it to the first frame of this animation
if (old_sprite != sprite_index) {
	local_frame = 0;
}

// Section: update image index
animate_character_sprite();
