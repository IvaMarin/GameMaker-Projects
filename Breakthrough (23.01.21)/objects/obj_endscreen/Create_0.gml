if (audio_is_playing(snd_Boss)) {
	audio_stop_sound(snd_Boss);
}

switch (room) {
	case rm_win:
		audio_play_sound(snd_JourneyEnd, 3, false);
		break;
	case rm_gameover:
		audio_play_sound(snd_GameOver, 3, false);
		break;
}