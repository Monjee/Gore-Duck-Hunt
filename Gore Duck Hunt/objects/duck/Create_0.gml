randomize();

on_sky = false;
spawn_duck = false;

if (!audio_is_playing(sound_duck_flapping)){
	audio_play_sound(sound_duck_flapping, 1, true);
}

depth = 200
duck_scale = 2.5;

image_xscale = duck_scale;
image_yscale = duck_scale;

speed = 4;

direction = irandom(360);

change_direction_time = 0; 
change_direction_interval = irandom_range(30, 60);

fly_away = false;