image_angle = direction;
image_alpha = alpha;

if (place_meeting(x, y + random(COVER_RADIOUS), ground)){
	visible = true;
	if (speed > 0){
		speed -= slowDown;
		gravity = 0;
		hspeed = 0;
		vspeed = 0;
	}
	
	if (!surface_exists(global.surface_blood)){
		global.surface_blood = surface_create(room_width, room_height);
	} else{
		surface_set_target(global.surface_blood);
		draw_sprite_ext(sprite_blood, 0, x, y, image_xscale, image_yscale, image_angle, c_red, alpha);
		surface_reset_target();
	}
	instance_destroy(self);
}