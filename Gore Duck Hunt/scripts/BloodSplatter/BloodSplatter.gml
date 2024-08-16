function BloodSplatter(amount, _x, _y){
	repeat(amount) instance_create_layer(_x, _y, "Instances", blood);
}