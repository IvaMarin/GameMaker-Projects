/// @desc ...

mouse_over = false;

if (point_in_rectangle(mouse_x, mouse_y, x, y, x+width, y+height)) {
    mouse_over = true;
	if (mx_prev != mouse_x || my_prev != mouse_y) {
	    var _mouse_hover_line = (mouse_y - y) div height_line;
		if !(description == -1) {
		    _mouse_hover_line--;
		}
		if (_mouse_hover_line < 0) {
		    _mouse_hover_line = 0;
		}
		if (_mouse_hover_line > options_cnt-1) {
		    _mouse_hover_line =options_cnt-1;
		}
		hover = _mouse_hover_line;
	}
}

hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

if (hover > options_cnt-1) {
	hover = 0;
}
if (hover < 0) {
	hover = options_cnt-1;
}
if ((mouse_check_button_pressed(mb_left) && mouse_over) || keyboard_check_pressed(vk_enter)) {
	if (array_length(options[hover]) == 2) {
	    var _func = options[hover][1];
		if (_func != -1) {
		    _func();
		}
	}
	instance_destroy();
}

mx_prev = mouse_x;
my_prev = mouse_y;