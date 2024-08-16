/// @description
if (duck_count >= 10){
	duck_count = 0;
	CheckRound(crossair.ducks_shot);
}

if (next_round || perfect_round || game_over && instance_exists(duck)){ // WORK AROUND - Duck spawns even if I conditioned it to not spawn when if (!next_round)
	instance_destroy(duck);
	audio_stop_sound(sound_duck_flapping);
}

if (perfect_round){
	if (!audio_is_playing(sound_round_clear) && alarm[2] == -1){
		perfect_round_show_ui = true;
		alarm[2] = game_get_speed(gamespeed_fps) * perfect_ui_show_time;
		audio_play_sound(sound_perfect, 1, false);
		perfect_round = false;
	}
}