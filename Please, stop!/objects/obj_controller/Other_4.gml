/// @desc ...

audio_stop_all();
if (room == rm_flat) {
	audio_play_sound(snd_background, 2, true);
} else {
	audio_play_sound(snd_title, 2, true);
}
