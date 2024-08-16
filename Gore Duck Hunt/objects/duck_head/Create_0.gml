randomize();

depth = -1;

// Limb movement behavior
image_xscale = 2.5;
image_yscale = 2.5;
direction = random_range(135, 45);
gravity = random_range(0.3, 0.5);

// Make limbs dissapear
fade_time = random_range(3, 7);
fade_speed = 0.1;
fade_intensity = 0.2;

limb_is_grounded = false;

while(vspeed == 0 || hspeed == 0){ // Prevent vspeed and hspeed from being 0
	vspeed = irandom_range(-5, -10)
	hspeed = irandom_range(-5, 5)
}

rotation_speed = random_range(-10, 10);