depth = -600

portrait = UI_portrait_violet_smile;

spd = 1;
smth = 0;

text = "I have never seen anything quite like this in the entire world, I think we are mistaken to try to prove it with rationality, it's something that not even children books would even take in. We need to understand it better, but it's impossible to define, what do we do?!"

var t_width = 255;
var t_height = 50;

scribble_draw_set_wrap(-1, t_width, t_height);
element = scribble_draw(0,0, text);
scribble_page_set(element, 0);

scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, spd, smth);