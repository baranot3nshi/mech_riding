/// @description string setup

var t_width = 255;
var t_height = 50;

scribble_draw_set_wrap(-1, t_width, t_height);
element = scribble_draw(0,0, text);
scribble_page_set(element, 0);

scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, spd, smth);