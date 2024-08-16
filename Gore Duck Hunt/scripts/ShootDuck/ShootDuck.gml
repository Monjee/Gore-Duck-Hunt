function ShootDuck(sound_shot, is_dismembered) {
	Screenshake(10, 4, 1);
    audio_play_sound(sound_shot, 1, false);
    RemoveBulletsFromUI(); // Remove bullets from UI when shooting

    var instance_duck = instance_position(mouse_x, mouse_y, duck); // Get duck reference
	
    if (position_meeting(mouse_x, mouse_y, duck)) { // If duck is shot
        if (is_dismembered) { // Duck is shot with shotgun
            var _dismembered_sound = audio_play_sound(sound_duck_dismembered, 1, false);
            audio_sound_pitch(_dismembered_sound, random_range(1.5, 4));
			
            BloodSplatter(150, instance_duck.x, instance_duck.y);
			
            Dismember(instance_duck.x, instance_duck.y);
                
            dog.state = "surprised";
            dog.wait = true;
            dog.wait_time = 1.5;
            dog.is_out = true;
        } else {
            BloodSplatter(50, instance_duck.x, instance_duck.y);
			//audio_play_sound(sound_quack, 1, false);
			instance_create_layer(instance_duck.x, instance_duck.y, "Instances", duck_hit); // Create falling dead duck
        }
		
		ducks_shot++;
		little_duck.Hit(score_manager.duck_count);
        score_manager.HitDuck(instance_duck.x, instance_duck.y); // Kill duck and add score

        if (audio_is_playing(sound_duck_flapping)) {
            audio_stop_sound(sound_duck_flapping);
        }

        instance_destroy(instance_duck); // Destroy the shot duck
    } else{ // If shot is missed
        shots_missed++;
        Screenshake(10, 4, 1);
    }
}