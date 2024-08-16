depth = -2;

fly_away_state = false;
MINIMUM_FLY_AWAY_STATE_TIME = 0.5;

// Create target ducks UI 
for(var i = 0; i < 10; i++){
	duckies[i] = instance_create_layer(300 + i * 25, 530, "Instances", little_duck);
}

function CreateUIBullets(){
	if (instance_number(bullet) > 0){// Destroy left-over bullets
		instance_destroy(bullet);
	}
	
	// Create UI bullets
	for(var i = 0; i < 3; i++){
		bullets[i] = instance_create_layer(80 + i * 25, 521, "Instances", bullet);
	}
}

CreateUIBullets();