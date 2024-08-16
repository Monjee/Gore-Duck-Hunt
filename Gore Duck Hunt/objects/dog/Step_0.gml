switch(state){
	case "score":
		if (is_out && !audio_is_playing(sound_score) && !wait) audio_play_sound(sound_score, 1, false);
		sprite_index = sprite_dog_with_duck;
		break;
	
	case "laughing":
		if  (is_out && !audio_is_playing(sound_laugh) && !wait) audio_play_sound(sound_laugh, 1, false);
		sprite_index = sprite_dog_lmao;
		break;
		
	case "surprised":
	if  (is_out  &&  !audio_is_playing(sound_score)  &&  !wait)  audio_play_sound(sound_score, 1, false);
		sprite_index = sprite_dog_surprised
		break;
}


if (is_out){ // When dog is coming up
	if (!wait){ // If there is no wait for dog to come up
		visible = true;
		
		UP_TIME--;
	
		if (UP_TIME >= UP_DURATION){ // Go up
			y -= 3; // Speed
		} else if (UP_TIME <= DOWN_TIME){ // Go down
			y += 3;
		}
	
		if (UP_TIME <= RESET_TIME){ // Reset dog's variables
			x = 408;
			y = 445
		
			UP_TIME = INITIAL_UP_TIME;
			DOWN_TIME = INITIAL_DOWN_TIME;
			RESET_TIME = INITIAL_RESET_TIME;
			UP_DURATION = UP_DURATION;
			wait_time = 1;
			
			visible = false;
			
			duck_spawner.SpawnDuck();
			
			crossair.ResetBullets();
		
			state = "score" // Reset state
			is_out = false;
		}
	} else{ // If there is wait time for dog to come out
		if (alarm[0] == -1){
			alarm[0] = game_get_speed(gamespeed_fps) * wait_time;
		}
	}
}