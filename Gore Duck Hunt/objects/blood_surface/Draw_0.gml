if (!surface_exists(global.surface_blood)){
	global.surface_blood = surface_create(room_width, room_height)
	surface_set_target(global.surface_blood);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
} else{
	draw_surface_ext(global.surface_blood, x, y, 1, 1, 0, c_white, 1)
}