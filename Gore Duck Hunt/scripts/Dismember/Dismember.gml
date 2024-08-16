// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dismember(_x, _y){
	randomize();
	
	instance_create_layer(_x, _y - 16, "Instances", duck_head);
	instance_create_layer(_x, _y, "Instances", duck_torso);
	instance_create_layer(_x, _y, "Instances", duck_wing);
	instance_create_layer(_x, _y + 16, "Instances", duck_feet);
	
	repeat(20){
		//var _inst = instance_create_layer(_x + random_range(-30, 30), _y + random_range(-30, 30), "Instances", duck_chunk);
		}
		
	
}