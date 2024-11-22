/// @description Insert description here
// You can write your code in this editor

sanity = sanity - 0.01;

// Determines how fast the player will get through documents
if (sanity >= 70){
	efficency = 0.3;
}
else if (sanity < 70) && (sanity >= 30){
	efficency = 0.2;
}
else{
	efficency = 0.1;
}

// Controls for the player
if (keyboard_check_pressed(vk_return) && (focus == false)){
	focus = true;
	sprite_index = spr_player_wrk;
}

else if(keyboard_check_pressed(vk_return) && (focus == true)){
	focus = false;
	sprite_index = spr_player;
}

// Player doing the work
if (focus == true){
	current_docprg = current_docprg - efficency;
}


// when the current documnet is complete
if(current_docprg <= 0){
	obj_game_controller.docs--
	current_docprg = 100;
	focus = false;
	sprite_index = spr_player;
}

//Attack
if (keyboard_check_pressed(vk_space) && (attacking == false)){
	instance_activate_object(obj_attack)
	focus = false;
	attacking = true;
	sprite_index = spr_player_attack
}
else if (keyboard_check_pressed(vk_space) && attacking == true){
	instance_deactivate_object(obj_attack)
	attacking = false;
	sprite_index = spr_player;
}