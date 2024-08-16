if (!surface_exists(surface_flash)){
	surface_flash = surface_create(room_width, room_height)
	surface_set_target(surface_flash);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
} else{
	draw_surface_ext(surface_flash, x, y, 1, 1, 0, c_white, 1)
}