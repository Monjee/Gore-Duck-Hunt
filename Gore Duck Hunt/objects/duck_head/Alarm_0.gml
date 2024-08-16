image_alpha -= fade_intensity;

if (image_alpha <= 0) instance_destroy(self);

alarm[0] = game_get_speed(gamespeed_fps) * fade_speed