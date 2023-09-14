/// @desc ...

gpu_set_blendenable(false);
/*
if (pause) {
	
    surface_set_target(application_surface);
	if (surface_exists(pause_surf)) {
	    draw_surface(pause_surf, 0, 0);
	} else {
		pause_surf = surface_create(res_w, res_h);
		buffer_set_surface(pause_surf_buffer, pause_surf, 0);
	}
	surface_reset_target();
}
*/

if (keyboard_check_pressed(vk_escape) && room == rm_flat) {
    if (!pause) {
	    pause = true;
		
		instance_deactivate_all(true);
		if (room == rm_flat) {
			var camera_x = camera_get_view_x(view_camera[0]);
			var camera_y = camera_get_view_y(view_camera[0]);
			Menu(
				camera_x +580, 
				camera_y+335,
				[
					["Resume", Resume], 
					["Title Screen", MainMenu], 
					["Quit", Quit]
				], 
				"Menu:"
		);
		}
		/*
		pause_surf = surface_create(res_w, res_h);
		
		surface_set_target(application_surface);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		if (buffer_exists(pause_surf_buffer)) {
		    buffer_delete(pause_surf_buffer);
		}
		pause_surf_buffer = buffer_create(res_w*res_h*4, buffer_fixed, 1);
		buffer_get_surface(pause_surf_buffer, pause_surf, 0);
		*/
	} else {
		pause = false;
		instance_activate_all();
		instance_destroy(obj_menu);

		/*
		if (surface_exists(pause_surf)) {
		    surface_free(pause_surf);
		}
		if (buffer_exists(pause_surf_buffer)) {
		    buffer_delete(pause_surf_buffer);
		}
		*/
	
	}
	
}

gpu_set_blendenable(true);