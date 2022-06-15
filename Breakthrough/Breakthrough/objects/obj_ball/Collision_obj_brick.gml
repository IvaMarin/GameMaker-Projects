audio_play_sound(snd_Break, 1, false);

// заставить шарик отскочить
move_bounce_all(true);

global.player_score += 15;

if (speed < 12) { // не превышаем макс скорость
	speed += 0.1;
}

instance_destroy(other); // уничтожаем блок