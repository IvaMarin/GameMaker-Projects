/// @desc ...

draw_sprite_stretched(spr_menu, 0, x-margin, y-margin, width_full, height_full);

draw_set_color(c_white);
draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);
for (l = 0; l < (options_cnt+_desc); l++) {
    draw_set_color(c_white);
	if (l==0 && _desc) {
	    draw_text(x, y, description);
	}
	else {
		var _str= options[l-_desc][0];
		if (hover == l -_desc) {
		    draw_set_color(c_yellow);
			_str = hover_marker + _str;
		}
		draw_text(x, y+l*height_line, _str);
	}
}