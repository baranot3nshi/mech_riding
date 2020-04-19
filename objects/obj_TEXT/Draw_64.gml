///================= coordinates =================///
var vh = global.view_height;
var vw = global.view_width;
var screen_buffer = 10;
var inner_buffer = 5;

///================= text box coordinates =================///
//textbox
var tb_width = sprite_get_width(UI_textbox);
var tb_x = vw/2 - tb_width/2
var tb_y = 10;

//portrait
var p_x = tb_x + 9;
var p_y = tb_y + 15;

//next
var tn_x = tb_x + 300;
var tn_y = tb_y + 68;

//text
var t_x = tb_x + 75;
var t_y = tb_y + 16;



///================= drawing =================///

//draw portrait
draw_sprite(portrait, 0, p_x, p_y);

//draw textbox
draw_sprite(UI_textbox, 0, tb_x, tb_y);

//draw next
draw_sprite(UI_textbox_next, 0, tn_x, tn_y)

//draw text

element = scribble_draw(t_x,t_y, element)