audio_stop_all();
if (room == rm_game_boss) {
	audio_play_sound(snd_Boss, 2, true);
} else {
	audio_play_sound(snd_RoundStart, 2, false);
}