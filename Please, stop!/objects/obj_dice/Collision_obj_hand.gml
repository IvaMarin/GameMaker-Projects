/// @desc ...

audio_play_sound(snd_catch,1,false);
global._lives--;
	
instance_destroy();
	
if (global._lives <= 0) {
	obj_controller.game_over = true;
		
	if (global._score > global._high_score) {
		global._high_score = global._score;
	}
} else {
	// добавляем шарик на начальную позицию
	instance_create_layer(xstart, ystart, "Dice", obj_dice);
}