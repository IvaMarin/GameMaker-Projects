if (room == rm_game){
	if(audio_is_playing(mcs_song)){
		audio_stop_sound(mcs_song);
	}
	audio_play_sound(mcs_song, 2, true);
	repeat(6){
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);
		instance_create_layer(xx,yy,"Instances", obj_asteroid);
	}
	alarm[0] = 60;
}