/// @description display_write_all_specs(x,y);
/// @param {real} x
/// @param {real} y
var _str="";
_str+=display_write_specs(display.Screen)+"\n";
_str+=display_write_specs(display.Window)+"\n";
_str+=display_write_specs(display.Gui)+"\n";
_str+=display_write_specs(display.AppSurface)+"\n";
_str+=display_write_specs(display.View)+"\n";
draw_text(argument0,argument1,_str);