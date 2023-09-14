/// @desc restart

if (room == rm_game_over) {
	global._score = 0; // обнулить счетчик очков
}

global._lives = 1; // вернуть жизни
global._level = "flat"; // вернуться первый уровень
room_goto(rm_flat);