randomize();
depth = -1;

// Limb movement behavior
feather_orientation = choose(2, -2);

image_xscale = feather_orientation;
image_yscale = feather_orientation;


direction = random_range(135, 45);
gravity = random_range(0.03, 0.07);

// Make limbs dissapear
fade_time = random_range(3, 7);
fade_speed = 0.1;
fade_intensity = 0.2;

limb_is_grounded = false;

while(vspeed == 0 || hspeed == 0){ // Prevent vspeed and hspeed from being 0
	vspeed = random_range(-4, 4)
	hspeed = random_range(-4, 4)
}

rotation_speed = random_range(-10, 10);