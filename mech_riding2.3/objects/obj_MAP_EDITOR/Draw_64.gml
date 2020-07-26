var vw = window_get_width()
var vh = window_get_height()

button_width = 150
button_height = 50
create_x = vw-200
create_y = vh-100
// create map button

if (mouse_check_area(create_x,create_y,create_x+button_width, create_y+button_height))
{draw_set_colour(c_blue)} else draw_set_colour(c_white)


var create_cx = create_x+button_width/2
var create_cy = create_y+button_height/2

draw_rectangle(create_x, create_y, create_x+button_width, create_y+button_height, true)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_outlined(create_cx,create_cy,c_white,c_black,"Create Map Tile")

