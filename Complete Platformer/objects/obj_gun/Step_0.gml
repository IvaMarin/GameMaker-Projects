/// @desc firing

recoil = max(0, recoil - 1); // decrease recoil by 1 and make sure it doesn't go below zero
if (mouse_check_button(mb_left) && firing_delay-- < 0) {
    firing_delay = 5;
	recoil = 4;
	with (instance_create_layer(x, y, "Bullets", obj_bullet)) {
	    speed = 33;
		direction = other.image_angle + random_range(-3, 3); // get gun angle with a little spread
		image_angle = direction;
	}
}

// move gun in a given direction by recoil
x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

// flip the gun if it's facing left
if (image_angle > 90 && image_angle < 270) {
    image_yscale = -1;
}
// else don't flip it
else {
	image_yscale = 1;
}