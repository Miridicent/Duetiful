/// @description Insert description here
// You can write your code in this editor

if (obj_player.stamina == 3){
	sprite_index = spr_health_full;
}

else if (obj_player.stamina == 2){
	sprite_index = spr_health_half;
}

else if (obj_player.stamina == 1){
	sprite_index = spr_health_one;
}