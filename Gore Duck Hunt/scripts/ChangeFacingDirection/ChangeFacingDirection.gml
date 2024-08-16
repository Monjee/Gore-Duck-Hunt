function ChangeFacingDirection(){
	var _horizontal_speed = lengthdir_x(speed, direction);
	
	if (_horizontal_speed < 0) { // Invert duck's sprite according to direction
	    image_xscale = -duck_scale; // Face left
	} else if (_horizontal_speed > 0) {
	    image_xscale = duck_scale;  // Face right
	}
	
	var _vertical_speed = lengthdir_y(speed, direction)
	
	if (_vertical_speed < 0) { // Change duck's sprite based on vertical direction
	   sprite_index = sprite_black_duck // If duck is going up
	} else if (_vertical_speed > 0) {
		sprite_index = sprite_black_duck_straight // If duck is going down
	}
	
	if (direction >= 160 && direction <= 210 || direction == 2){ // Change duck's sprite based on "straight" direction
		sprite_index = sprite_black_duck_straight
	}
}