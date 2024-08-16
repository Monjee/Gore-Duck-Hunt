draw_set_color(c_white); // Set text color

// Update/display score
var string_player_score = string_format(player_score, 6, 0);
var formatted_player_score = string_replace_all(string_player_score, " ", "0");
draw_text_transformed(x - 3, y - 8, formatted_player_score, 2, 1.5, image_angle);

// Display floating score when killed a duck
if (display_score_per_round){
	draw_set_halign(fa_center);
	draw_text(X, Y, string(score_per_round));
	draw_set_halign(fa_left);
	if (alarm[0] == -1) alarm[0] = game_get_speed(gamespeed_fps) * display_time;
}

if (next_round){
	draw_set_halign(fa_center);
	draw_sprite(sprite_round, 0 , room_width / 2, 123);
	draw_text_transformed(room_width / 2, 123, string(game_round), 1.5, 1.5, image_angle);
	draw_set_halign(fa_left);
}

if (perfect_round_show_ui){
	draw_set_halign(fa_center);
	draw_sprite(sprite_perfect, 0 , room_width / 2, 123);
	draw_set_halign(fa_left);
}

if (game_over){
	draw_set_halign(fa_center);
	draw_sprite(sprite_game_over, 0 , room_width / 2, 123);
	draw_set_halign(fa_left);
	
	if (!audio_is_playing(sound_game_over)){
		game_restart();
	}
}

// Round counter bottom left
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(131, 211, 19));
draw_text_transformed(150, 478, string(game_round), 1.2, 1.2, image_angle);
draw_set_halign(fa_left);