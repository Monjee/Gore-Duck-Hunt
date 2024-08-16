function Movement(){
		change_direction_time += .1;
	
		if (y > 300){ // Move straight up until is airborne
			direction = 100;
			on_sky = false;
		} else{
			on_sky = true;
			if (direction <= 110 && direction >= 70) { // Prevent duck from moving too vertically
		        direction += irandom_range(-110, 70);
		    }

			if (change_direction_time >= change_direction_interval) {
			    direction += irandom_range(-90, 90); // Change duck's direction
			    change_direction_time = 0;
			    change_direction_interval = irandom_range(30, 60);
			}
		}

		x += lengthdir_x(speed, direction);
		y += lengthdir_y(speed, direction);
}
