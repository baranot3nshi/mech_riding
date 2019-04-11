var vw = global.view_width;
var vh = global.view_height;

draw_set_halign(fa_right);

//draw HP
draw_text(vw-10,10,"HP = " + string(global.HP) + "/" + string(global.HP_max))
//draw charges
draw_text(vw-10,25,"AP = " + string(global.AP) + "/" + string(global.AP_max))

draw_text(vw-10,40,"screenfreeze = " + string(global.screenfreeze))
draw_text(vw-10,55,"target_framerate = " + string(target_framerate))


draw_set_halign(fa_left);