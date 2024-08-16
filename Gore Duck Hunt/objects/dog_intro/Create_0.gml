image_xscale = 2.5;
image_yscale = 2.5;

state = "walking";

walking_time = 3;
sniff_time = 1;
sniff_count = 0;

alarm[0] = game_get_speed(gamespeed_fps) * walking_time;