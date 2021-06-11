// проверка на взаимодействие с левой и правой сторонами
// collision mask шарика со сторонами комнаты
if (bbox_left < 0 or bbox_right > room_width) {
	audio_play_sound(snd_Bounce, 1, false);
	
	// расположить шарик ровно на границе столкновения
	// без этого шарик может застрять в стенках
	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
	
	// сменить движение на противоположное по горизонтали
	hspeed = hspeed * (-1); 
}

if (bbox_top < 0) {
	audio_play_sound(snd_Bounce, 1, false);
	
	// расположить шарик ровно на границе столкновения
	// без этого шарик может застрять в стенках
	y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);
	
	// сменить движение по вертикали
	vspeed *= -1;
}

if (bbox_bottom > room_height) {
	global.player_lives -= 1;
	
	// уничтожаем шарик
	instance_destroy();
	
	if (global.player_lives <= 0) {
		
		obj_control.gameover = true;
		
		if (global.player_score > global.high_score) {
			global.high_score = global.player_score;
		}
	} else {
		// добавляем шарик на начальную позицию
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
	}
}