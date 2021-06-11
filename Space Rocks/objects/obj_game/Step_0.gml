if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
		room_goto(rm_game);
			break;
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}
// при таком варианте проблемы с дублированием звука
if(room == rm_game){
	if(global._score >= 1000){
		room_goto(rm_win);
	if(audio_is_playing(mcs_song)){
		audio_stop_sound(mcs_song);
	}
		audio_play_sound(snd_win,1,false);
	}

	if(global._lives <=0){
		room_goto(rm_gameover);
	if(audio_is_playing(mcs_song)){
		audio_stop_sound(mcs_song);
	}
		audio_play_sound(snd_lose,1,false);
	}
}