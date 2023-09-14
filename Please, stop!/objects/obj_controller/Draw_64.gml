/// @desc score + level + high score

switch(room){
	case rm_flat:

		draw_set_halign(fa_left);  
		draw_text(10, 0, "Score: " + string(global._score));

		//draw_text(10, 50, "Level: " + global._level);

		//draw_set_halign(fa_right); 
		draw_text(10, 25, "High Score: " + string(global._high_score));

		break;
		
	case rm_title:
		draw_sprite(spr_dice, 0, room_width/2, room_height/2-150);
		draw_set_halign(fa_center);
		var c = c_purple
		draw_text_transformed_color(
			room_width/2, room_height/2-125, "Please, stop!",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2,room_height/2,
			@"Don't let those hands catch you!

Controls:
SPACE - jump
ESC - pause or quit
ARROW KEYS - menu navigation
F11 - full screen


>> PRESS ENTER TO START <<
"
		);
		draw_set_halign(fa_left);
		break;
}

