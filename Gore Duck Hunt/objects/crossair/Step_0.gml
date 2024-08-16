if (mouse_check_button_pressed(mb_left) && can_shoot){ //Shoot
	ShootDuck(sound_gunshot, false);
}

if (mouse_check_button_pressed(mb_right) && can_shoot){ //Shoot
	ShootDuck(sound_shotgun, true);
}

if (bullets <= 0) can_shoot = false;

if(shots_missed >= 3 && instance_exists(duck)){ // If all shots are missed, trigger fky away state
	UI.fly_away_state = true;
	shots_missed = 0; // Reset shots
}