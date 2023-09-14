/// @desc process enemy death

if (hp <= 0) {
	with (instance_create_layer(x, y, layer, obj_enemy_corpse)) {
		// set direction that enemy was killed from
	    direction = other.hit_from; 
		
		var move_up = 2;
		horizontal_speed = lengthdir_x(3, direction);
		vertical_speed = lengthdir_y(3, direction) - move_up;
		
		if (sign(horizontal_speed) != 0) {
			image_xscale = sign(horizontal_speed);
		}
	}
	
    instance_destroy();
}