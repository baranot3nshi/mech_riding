// Inherit the parent event
event_inherited();

//bbox
draw_set_alpha(.5)
if(place_meeting(x,y,obj_wall))draw_set_color(c_yellow)
else draw_set_color(c_purple)

draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false)

draw_set_color(c_white)
draw_set_alpha(1)