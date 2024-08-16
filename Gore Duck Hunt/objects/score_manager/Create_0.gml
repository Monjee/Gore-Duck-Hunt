depth = -5;

player_score = 0;
score_per_round = 500;

perfect_round = false;
perfect_round_show_ui = false;
perfect_ui_show_time = 3;

game_round = 1;
next_round = true;
round_ui_show_time = 3;

game_over = false;

alarm[1] = game_get_speed(gamespeed_fps) * round_ui_show_time;
ducks_required = 6;

ducks_shot = 0;
duck_count = -1;

display_score_per_round = false;
display_time = 0.7;

X = 0; // Floating text x
Y = 0; // Floating text y

draw_set_font(font_pixel);

function HitDuck(_x, _y){ // Manage score
		display_score_per_round = true;
		X = _x;
		Y = _y;
	
	    if (game_round <= 5) {
	        player_score += score_per_round;
	    } else if (game_round <= 10) {
			ducks_required = 8;
			score_per_round = 1000;
	        player_score += score_per_round;
	    } else if (game_round <= 15) {
			ducks_required = 10;
			score_per_round = 1500;
	        player_score += score_per_round;
	    } else {
			ducks_required = 10
			score_per_round = 2000;
	        player_score += score_per_round;
	    }
		
	    ducks_shot += 1;
}

function CheckRound(_ducks_shot){
	if (_ducks_shot >= ducks_required){ // Advance to next round
		if (_ducks_shot >= 10){
			player_score += 10000;
			perfect_round = true;
			audio_play_sound(sound_round_clear, 1, false);
		} else{
			audio_play_sound(sound_round_clear, 1, false);
			RoundClear();
		}
	} else {
		game_over = true;
		audio_play_sound(sound_game_over, 1, false);
	}
}