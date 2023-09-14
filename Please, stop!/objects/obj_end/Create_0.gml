/// @desc ...

if (audio_is_playing(snd_background)) {
	audio_stop_sound(snd_background);
}

switch (room) {
	case rm_win:
		audio_play_sound(snd_credits, 3, true);
		break;
	case rm_game_over:
		audio_play_sound(snd_end, 3, true);
		break;
}
