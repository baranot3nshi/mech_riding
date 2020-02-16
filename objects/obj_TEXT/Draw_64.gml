///================= coordinates =================///
var vh = global.view_height;
var vw = global.view_width;
var screen_buffer = 10;
var inner_margin = 5;
var tbh = 70; //textbox height

///================= text box coordinates =================///
var tbx1 = screen_buffer;
var tby1 = vh - screen_buffer - tbh;
var tbx2 = vw - screen_buffer;
var tby2 = vh - screen_buffer;

var tx = tbx1 + inner_margin
var ty = tby1 + inner_margin;

draw_set_colour(c_light_violet);
draw_rectangle(tbx1, tby1, tbx2, tby2, false);
draw_set_colour(c_white);



scribble_draw_set_wrap()
scribble_draw(tx,ty,"dsvaòsdklmaòsdknvasdnvlksdmvlksnadvldPINGASisdnvasdnvasòdlvnaskmcdsjnasdklmaòsdknvasdnvlksdmvlksnadvldPINGASisdnvasdnvasòdlvnaskmcdsjnasdklmaòsdknvasdnvlksdmvlksnadvldPINGASisdnvasdnvasòdlvnaskmcdsjnavsòdlvmù+èìdvla,àsdmv")