/// @desc end results

//draw_set_font(fnt_text);
draw_set_halign(fa_center); // корректно отображает текст

switch (room) {
	case rm_win:
		var c = c_lime;
		
		if (global._score > global._high_score) {
			global._high_score = global._score;
		}

		draw_text_transformed_color(room_width/2, room_height/2-280, "YOU WON!", 4, 4, 0, c, c, c, c, 1);

		draw_text(room_width/2, room_height/2-150, "Thank you for playing!");
		draw_text(room_width/2,(room_height/2)-100, "This game was made during GMTK Game Jam 2022");

		draw_text(room_width/2, room_height/2-30,"~Credits~");

		draw_text(room_width/2,(room_height/2)+10, "Game by IvaMarin");
		draw_text(room_width/2,(room_height/2)+40, "Art by IvaMarin");
		draw_text(room_width/2,(room_height/2)+70, "Music was made in BeepBox");
		draw_text(room_width/2,(room_height/2)+100, "Sounds from https://freesound.org");
		draw_text(room_width/2,(room_height/2)+130, "Font m5x7 by Daniel Linssen");
		
		

		draw_text(room_width/2, (room_height/2)+200, "PRESS ENTER TO CONTINUE");
		draw_text(room_width/2, (room_height/2)+230, "OR");
		draw_text(room_width/2, (room_height/2)+260, "PRESS ESC TO RETURN TO MAIN MENU");
		break;
	case rm_game_over:

		var c = c_red;

		draw_text_transformed_color(room_width/2, room_height/2-125, "GAME OVER", 4, 4, 0, c, c, c, c, 1);

		draw_text(room_width/2, room_height/2,"Your Score: " + string(global._score));

		draw_text(room_width/2,(room_height/2)+30, "High Score: " + string(global._high_score));

		draw_text(room_width/2, (room_height/2)+100, "PRESS ENTER TO RESTART");
		draw_text(room_width/2, (room_height/2)+130, "OR");
		draw_text(room_width/2, (room_height/2)+160, "PRESS ESC TO RETURN TO MAIN MENU");
		break;
}
