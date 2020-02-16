///================= coordinates =================///
var vh = global.view_height;
var vw = global.view_width;
var margin = 10;
var tbh = 70;

///================= text box coordinates =================///
var tbx1 = margin;
var tby1 = vh - margin - tbh;
var tbx2 = vw - margin;
var tby2 = vh - margin;

var tx = tbx1 + 5
var ty = tby1 + 5;

draw_set_colour(c_light_violet);
draw_rectangle(tbx1, tby1, tbx2, tby2, false);
draw_set_colour(c_white);

scribble_draw(tx,ty,"dsvaòsdklmaòsdknvasdnvlksdmvlksnadvldPINGASisdnvasdnvasòdlvnaskmcdsjnasdklmaòsdknvasdnvlksdmvlksnadvldPINGASisdnvasdnvasòdlvnaskmcdsjnasdklmaòsdknvasdnvlksdmvlksnadvldPINGASisdnvasdnvasòdlvnaskmcdsjnavsòdlvmù+èìdvla,àsdmv")