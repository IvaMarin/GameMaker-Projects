audio_play_sound(snd_Bounce, 1, false);

// Проверка на случаи попадания ровно под углом 0/180
if (direction = 0) {
	direction = choose(190, 170);
}

if (direction = 180) {
	direction = choose(10, 350);
}

move_bounce_all(true);
