switch(room){
	case rm_game:
		draw_text(20,20, "SCORE: "+string(global._score));
		draw_text(20,40, "LIVES: "+string(global._lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_purple
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2,200,
			@"Score 1000 points to win or something

UP: move
LEFT/RIGHT: change direction
SPACE: shoot
DOWN: doesn't work

>> PRESS ENTER TO START <<
"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime
		draw_text_transformed_color(
			room_width/2, 200, @"YOU WON !",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2,300,
			@"HERE IS YOUR CANDY
>(CANDY)<
PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);	
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2,250,
			"FINAL SCORE: "+string(global._score)
		);
		draw_text(
			room_width/2,300,
			@"SORRY, NO CANDY FOR YOU

PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);		
		break;
}