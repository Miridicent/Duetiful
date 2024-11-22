/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_color(c_yellow);
draw_text(181, 276, "Documents left:");

draw_set_color(c_white);
var _str = string(obj_daycounter.docs);
draw_text(181, 296, _str)
draw_text(670, 248, Visittime);
draw_text(695, 58, obj_daycounter.day);
