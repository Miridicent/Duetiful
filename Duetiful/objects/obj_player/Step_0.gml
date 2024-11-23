/// @description Insert description here
// You can write your code in this editor

//sanity = sanity - 0.01;

// Determines how fast the player will get through documents
if (sanity == 3){
	efficency = 0.3;
}
else if (sanity == 2){
	efficency = 0.2;
}
else{
	efficency = 0.1;
}

//Health Limit
if (stamina > 3){
	stamina = 3;
}

// Controls for the player
if (keyboard_check_pressed(vk_return) && (focus == false) && (attacking == false) && (tele == false)){
	focus = true;
	audio_play_sound(scribble_6144, 0, 1);
	sprite_index = spr_player_wrk;
}

else if(keyboard_check_pressed(vk_return) && (focus == true)){
	focus = false;
	audio_stop_sound(scribble_6144);
	sprite_index = spr_player;
}

// Player doing the work
if (focus == true){
	current_docprg = current_docprg - efficency;
}


// when the current documnet is complete
if(current_docprg <= 0){
	obj_daycounter.docs--
	current_docprg = 100;
	focus = false;
	audio_stop_sound(scribble_6144);
	sprite_index = spr_player;
}

//Attack
if (keyboard_check_pressed(vk_space) && (attacking == false)){
	instance_activate_object(obj_attack)
	focus = false;
	attacking = true;
	audio_play_sound(laser_6042, 0, 0);
	sprite_index = spr_player_attack
}
else if (keyboard_check_pressed(vk_space) && attacking == true){
	instance_deactivate_object(obj_attack)
	attacking = false;
	audio_stop_sound(laser_6042);
	sprite_index = spr_player;
}

//Tele
if (keyboard_check_pressed(vk_alt) && (tele == false)){
	instance_activate_object(obj_teleport);
	audio_play_sound(laser_6042, 0, 0);
	focus = false;
	tele = true;
	sprite_index = spr_player_attack;
}
else if (keyboard_check_pressed(vk_alt) && tele == true){
	instance_deactivate_object(obj_teleport);
	audio_stop_sound(laser_6042);
	tele = false;
	sprite_index = spr_player;
}

//Game Over 
if (stamina == 0){
	room_goto(Game_over);
}