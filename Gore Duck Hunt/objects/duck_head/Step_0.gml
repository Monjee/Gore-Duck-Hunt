if (x < 32 || x > room_width - sprite_width) { // Prevent body parts from going outside the room
    direction = 180 - direction; //Reverse horizontal direction
}
	
if (y < 32) { 
	    direction = -direction; // Reverse vertical direction
}

if (place_meeting(x, y + random(-150), ground)){ // Stop movement when colliding with ground
	gravity = 0;
	hspeed = 0;
	vspeed = 0;
	
	var _limb_sounds = choose(sound_duck_limb_1, sound_duck_limb_2, sound_duck_limb_3)
	
	if (!limb_is_grounded && !audio_is_playing(_limb_sounds)){ // Play limb sound once - prevent sound from playing simultaneously 
		
		var _limb_sound = audio_play_sound(_limb_sounds, 1, false);
		audio_sound_gain(_limb_sound, 0.5, 0);
		limb_is_grounded = true;
	}
}

if (!vspeed == 0 && !vspeed ==0){
	image_angle += rotation_speed
	if (alarm[0] == -1) alarm[0] = game_get_speed(gamespeed_fps) * fade_time;
}