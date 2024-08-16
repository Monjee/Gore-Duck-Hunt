bullets = 3;
ducks_shot = 0;
shots_missed = 0;
can_shoot = true;

cursor_sprite = sprite_crossair;
window_set_cursor(cr_none);

function ResetBullets(){
	crossair.bullets = 3;
	crossair.shots_missed = 0;
	can_shoot = true;
	
	UI.CreateUIBullets();
}