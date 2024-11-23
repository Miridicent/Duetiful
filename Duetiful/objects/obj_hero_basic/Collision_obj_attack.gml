/// @description Insert description here
// You can write your code in this editor
instance_destroy();
instance_create_layer(x, y, "Visitors", obj_pop);
audio_play_sound(retro_explode_1_236678, 0, 0);

obj_game_controller.Visit = false;

if (distance_to_object(obj_player) > 100){
	obj_game_controller.Visittime = 150;
}
else{
	obj_game_controller.Visittime = 250;
}