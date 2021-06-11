draw_set_halign(fa_left); // корректно отображает текст 
draw_text(8, 8, "Score: " + string(global.player_score));

draw_text(24, room_height - 32, "Level: " + string(global.level));

draw_set_halign(fa_right); // корректно отображает текст 
draw_text(room_width - 8, 8, "High Score: " + string(global.high_score));

if (show) { // показывать пока не нажат пробел
	draw_set_halign(fa_center); // корректно отображает текст 
	draw_text(room_width / 2, 8, "PRESS SPACE TO PLAY");
}

var _x = (room_width / 2) - ((global.player_lives - 1) * 32); // абсцисса спрайта жизней

// сдвигаем на половину от числа жизней * расстояние между ними, 
// не считая одну из жизней
repeat (global.player_lives) {
	draw_sprite_ext(
		spr_bat, 
		0, 
		// расположение спрайта
		_x,
		room_height - 16,
		// размеры спрайта относительно исходного
		0.75, 
		0.75,
		0,
		c_white,
		0.5 // прозрачность спрайта от 0 до 1
	);
	_x += 64; // расстояние между спрайтами
}