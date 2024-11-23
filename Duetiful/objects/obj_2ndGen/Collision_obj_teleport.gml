/// @description Insert description here
// You can write your code in this editor

instance_destroy();
instance_create_layer(x, y, "Visitors", obj_pop3);
audio_play_sound(retro_blip_236676,0 , 0)

obj_game_controller.Visit = false;
obj_game_controller.Visittime = 200;