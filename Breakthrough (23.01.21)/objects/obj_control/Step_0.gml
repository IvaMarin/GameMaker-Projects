if (instance_number(obj_brick) <= 0) { // если уничтожены все блоки
	if room_exists(room_next(room)) {
		room_goto_next(); 
		global.level += 1; // повышаем счетчик уровней
		global.player_lives = 3; // вернуть жизни
	}
}

if (gameover) { // если игра окончена
	room_goto(rm_gameover); // перейти на экран конца игры
}