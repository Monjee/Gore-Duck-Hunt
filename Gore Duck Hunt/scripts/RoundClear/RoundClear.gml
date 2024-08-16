// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoundClear(){
		alarm[1] = game_get_speed(gamespeed_fps) * round_ui_show_time;
		
		//audio_play_sound(sound_round_clear, 1, false);
		
		crossair.ResetBullets();
		little_duck.ResetDuckies();
		
		next_round = true;
		game_round ++;
}