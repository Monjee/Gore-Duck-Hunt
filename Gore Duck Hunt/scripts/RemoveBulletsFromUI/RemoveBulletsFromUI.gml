function RemoveBulletsFromUI(){
	bullets--;
	
	if (bullets >= 0){ // Remove bullet from UI when shooting
		instance_destroy(UI.bullets[bullets]);
	}
}