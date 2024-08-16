draw_self();

if (fly_away_state){// Fly away game state
	sky.sky_rgb = sky.red_sky; // Change sky color - BLUE 
	
	draw_sprite(sprite_fly_away_text, 0, room_width / 2, 90); // Draw fly away text
	
	if (alarm[0] == -1){
		alarm[0] = game_get_speed(gamespeed_fps) * 1;
	}
	
	if (instance_exists(duck)) duck.fly_away = true;
} else{
	sky.sky_rgb = sky.blue_sky; // Change sky color - RED
}