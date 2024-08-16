spin_speed += 1.3;

if (spin_speed >= 10){ // Make spin effect by inverting sprite
	image_xscale = -2.5
	
	if (spin_speed >= 15){
		spin_speed = 0;
	}
	
} else{
	image_xscale = 2.5
}

if (y >= 455){ // Duck's collision with ground
	audio_play_sound(sound_duck_landing, 1, false);
	dog.wait = true
	dog.is_out = true; // Dog comes out with duck in hand - SCORE state
	
	if (audio_is_playing(sound_duck_falling)) audio_stop_sound(sound_duck_falling);
	
	instance_destroy(self);
}