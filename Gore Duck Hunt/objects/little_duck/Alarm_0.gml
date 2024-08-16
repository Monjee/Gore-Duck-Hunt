if (blink){
	if (visible){
		visible = false;
	} else visible = true;

	alarm[0] = game_get_speed(gamespeed_fps) * blink_time;
}