function CheckBoundaries(){
	if (x < 32 || x > room_width - sprite_width) {
    direction = 180 - direction; //Reverse horizontal direction
	}
	
	if (y < 32 || y > 300) { 
		direction = -direction; // Reverse vertical direction
	}
}