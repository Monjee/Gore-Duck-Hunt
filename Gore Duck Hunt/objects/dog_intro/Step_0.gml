switch (state){
	case "walking":
		sprite_index = sprite_dog_walking;
		hspeed = 1;
		break;
	
	case "sniff":
		sprite_index = sprite_dog_sniffig;
		hspeed = 0;
		
		if (alarm[1] == -1){
			alarm[1] = game_get_speed(gamespeed_fps) * sniff_time;
		}
		break;
		
	case "found it":
		if (!audio_is_playing(sound_bark)) audio_play_sound(sound_bark, 1, false);
		
		sprite_index = sprite_dog_found_it;
		hspeed = 0;
		break;
		
	case "jump":
		sprite_index = sprite_dog_jump;
		
		if (image_index > 0) image_index = 1;
		
		if (y < 350 ) depth = 201 // Change depth when not touching the background, so it looks like dog went behind the grass
		
		if (y > 300){ // Jump and move dog to the right
			hspeed = 3;
			y -= 4;
		} else gravity = 1; // Make dog fall
		break;
}

if (y > 500) { //
	duck_spawner.SpawnDuck() 
	instance_destroy();
}