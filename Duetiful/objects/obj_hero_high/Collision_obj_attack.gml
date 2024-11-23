/// @description Insert description here
// You can write your code in this editor

deathtime--;

if (deathtime <= 0){
	instance_destroy()
	obj_game_controller.Visit = false;
	instance_create_layer(x, y, "Visitors", obj_pop);
	audio_play_sound(retro_explode_1_236678, 0, 0);
	if (distance_to_object(obj_player) > 100){
		obj_game_controller.Visittime = 150;
	}
	else{
		obj_game_controller.Visittime = 250;
	}
}