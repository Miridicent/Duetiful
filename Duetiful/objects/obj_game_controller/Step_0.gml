/// @description Insert description here
// You can write your code in this editor


randomize();

if (room == Office){

	if (Visit = false){
		Visittime = Visittime - 1;
	}
	if(Visittime <= 0){
		Visit = true;
		var _spawn = random(5);
		if (_spawn >= 4){
			instance_create_layer(sx, sy, "Visitors", obj_secretary);
		
		}
		else if(_spawn < 4){
			instance_create_layer(sx, sy, "Visitors",obj_hero_basic);
		}
		Visittime = 100;
	}

	

}

else if (room == Office_2){

	if (Visit = false){
		Visittime = Visittime - 1;
	}
	if(Visittime <= 0){
		Visit = true;
		var _spawn = random(5);
		if (_spawn >= 4){
			instance_create_layer(sx, sy, "Visitors", obj_secretary);
		
		}
		else if(_spawn < 4){
			instance_create_layer(sx, sy, "Visitors", obj_hero_mid);
		}
		Visittime = 100;
	}

	

}

else if (room == Office_3){

	if (Visit = false){
		Visittime = Visittime - 1;
	}
	if(Visittime <= 0){
		Visit = true;
		var _spawn = random(5);
		if (_spawn >= 4){
			instance_create_layer(sx, sy, "Visitors", obj_secretary);
		
		}
		else if(_spawn < 4){
			instance_create_layer(sx, sy, "Visitors", obj_hero_high);
		}
		Visittime = 100;
	}

	

}

if(keyboard_check_pressed(vk_escape)){
	obj_daycounter.docs = 0;
}

if (obj_daycounter.docs == 0){
		obj_daycounter.day = obj_daycounter.day + 1;
		room_goto(Nice_Work);
	}