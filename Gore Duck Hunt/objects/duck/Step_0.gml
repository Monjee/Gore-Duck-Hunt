if (fly_away){ // Fly away state
	sprite_index = sprite_duck_fly_away;
	direction = 90; // Make duck go staight up
	speed = 7;
} else{
	Movement();
	
	if (on_sky) // Check collision once it's airborne 
	{
		CheckBoundaries();
	}
	
	ChangeFacingDirection();
}