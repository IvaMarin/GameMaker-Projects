audio_play_sound(snd_Bounce, 1, false);

// направляем шарик по линии столкновения
direction = point_direction(
	// координаты платформы
	other.x,
	other.y,
	// координаты шарика
	x,
	y
)