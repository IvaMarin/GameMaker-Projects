draw_set_font(fnt_text);
draw_set_halign(fa_center); // корректно отображает текст

switch (room) {
	case rm_win:
		var c = c_lime;
		
		if (global.player_score > global.high_score) {
			global.high_score = global.player_score;
		}

		draw_text_transformed_color(room_width/2, 150, "YOU WON!", 3, 3, 0, c, c, c, c, 1);

		draw_text(room_width/2, 250, "Thank you for playing!");

		draw_text(room_width/2, 300, "PRESS ENTER TO RESTART");
		break;
	case rm_gameover:
		var c = c_red;

		draw_text_transformed_color(room_width/2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1);

		draw_text(room_width/2, 250,"Your Score: " + string(global.player_score));

		draw_text(room_width/2, 280, "High Score: " + string(global.high_score));

		draw_text(room_width/2, 350, "PRESS ENTER TO RESTART");
		break;
}