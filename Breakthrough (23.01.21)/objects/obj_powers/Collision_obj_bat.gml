audio_play_sound(snd_PowerUp, 1, false);

if (image_index == 0) { // если столкновение с size power-up
// Использовать with() стоит, если мы хотим применить 
// несколько вещей к другому предмету
	with (obj_bat) {
		image_xscale = 1.5;
		alarm[0] = 10 * room_speed; // время действия 10 сек (600 фреймов)
	}
} else if (image_index == 1) { // если столкновение с speed power-up
	with (obj_ball) {
		speed = spd; // вернуть начальную скорость
	}
} else { // если столкновение с life power-up
	if (global.player_lives < 3) {
		global.player_lives += 1;
	} else {
		global.player_score += 250;
	}
}

instance_destroy(); // уничтожить power-up