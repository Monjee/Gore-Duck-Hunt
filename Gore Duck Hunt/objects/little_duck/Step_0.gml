if (score_manager.duck_count >= 0 && score_manager.duck_count < array_length(UI.duckies)){
    UI.duckies[score_manager.duck_count].blink = true;
}

if (score_manager.duck_count > 0 && (score_manager.duck_count - 1) < array_length(UI.duckies)){
    UI.duckies[score_manager.duck_count - 1].blink = false;
    UI.duckies[score_manager.duck_count - 1].visible = true;
}

if (crossair.ducks_shot > 0 && (crossair.ducks_shot - 1) < array_length(UI.duckies)){
    UI.duckies[crossair.ducks_shot - 1].visible = true;
    UI.duckies[crossair.ducks_shot - 1].blink = false;
}

if (blink && alarm[0] == -1){
	alarm[0] = game_get_speed(gamespeed_fps) * blink_time;
}