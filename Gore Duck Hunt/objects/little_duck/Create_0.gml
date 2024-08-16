depth = -5;

blink = false;
blink_time = 0.5;

function Hit(duckie_placement){
	UI.duckies[duckie_placement].image_index = 1;
	UI.duckies[duckie_placement].blink = false;
}

function ResetDuckies(){
	for(var i = 0; i < array_length(UI.duckies); i++){
		UI.duckies[i].image_index = 0;
	}
}