/// @desc hit an enemy

with (other) {
    hp--;
	flash = 3;
	hit_from = other.direction; // save last bullet direction
}

instance_destroy(); // destroy bullet