/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (obj_daycounter.day == 0){
	//obj_daycounter.day = 1;
	obj_daycounter.docs = 10
	room_goto(Office);
}

else if (obj_daycounter.day == 1){
	//obj_daycounter.day = 2;
	obj_daycounter.docs = 10
	room_goto(Office);
}

else if (obj_daycounter.day == 2){
	//obj_daycounter.day = 3;
	obj_daycounter.docs = 15
	room_goto(Office_2)
}

else if (obj_daycounter.day == 3){
	//obj_daycounter.day = 4;
	obj_daycounter.docs = 15
	room_goto(Office_2)
}

else if (obj_daycounter.day == 4){
	//obj_daycounter.day = 5;
	obj_daycounter.docs = 20
	room_goto(Office_3)
}

else if (obj_daycounter.day == 5){
	//obj_daycounter.day = 6;
	obj_daycounter.docs = 20
	room_goto(Office_3)
}