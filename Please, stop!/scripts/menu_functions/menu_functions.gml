// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function Menu(_x, _y, _options, _description=-1) {
	with(instance_create_depth(_x, _y, -999, obj_menu)) {
		options = _options;
		description = _description;
		options_cnt = array_length(_options);
		hover_marker = "* ";
		
		// set up size
		margin = 25;
		draw_set_font(fnt_text);
		
		width = 1;
		if (_description != -1) {
			width = max(width, string_width(_description));
		}
		for (var i =0; i< options_cnt; i++) {
		    width =  max(width, string_width(_options[i][0]));
		}
		width += string_width(hover_marker);
		
		height_line = 25;
		height = height_line * (options_cnt + !(description == -1))
		
		width_full = width + 2 * margin;
		height_full = height + 2 * margin;
	}

}

function Resume() {
	instance_activate_all();
}

function MainMenu() {
	room_goto(rm_title);
	global._score = 0;
}

function Quit() {
	game_end();
}