/// @description Insert description here
// You can write your code in this editor
event_inherited();
//draw_text(x-5,y+5,"x = " +string(x))
//draw_text(x-5,y+10,"y = " +string(y))

if (obj_DEBUG.debug)
{
	var c1 = c_black
	var c2 = c_white
	var _s = 7;

	draw_text_outlined(x,5+y+_s*0,c1,c2,"dir = " + string(dir))
}