///@description Walk time
state = "sniff" // Change state to sniff when done walking
sniff_count++;

if (sniff_count >= 2){ // Sniff 2 times before jumping
	state = "found it" // Found it state 
	alarm[2] = game_get_speed(gamespeed_fps) * 0.3; // Change state to jump
} else alarm[0] = game_get_speed(gamespeed_fps) * walking_time - 2; // Second walk