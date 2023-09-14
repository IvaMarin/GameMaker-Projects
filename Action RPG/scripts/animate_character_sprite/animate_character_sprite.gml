// macros are constants that are called in a compile time
#macro FRAME_RATE 60

// Update sprite
function animate_character_sprite() {
	// convert degrees (0, ..., 360) into a number (0, 1, 2, 3)
	var cardinal_direction = round(direction / 90); // for 8 directions use 45
	var total_frames = sprite_get_number(sprite_index) / 4;

	image_index = local_frame + (cardinal_direction * total_frames);
	local_frame += sprite_get_speed(sprite_index) / FRAME_RATE;

	// if animation would loop on the next game step
	if (local_frame >= total_frames) {
		animation_end = true;
		local_frame -= total_frames;
	} else 
		animation_end = false;
	
}