/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_textbox, 0, x, y);

draw_set_font(Dogica);
draw_set_color(c_yellow);

draw_text_ext(x, y, text, stringHeight, boxWidth);