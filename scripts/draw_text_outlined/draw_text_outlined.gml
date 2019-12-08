///draw_text_outlined(x, y, outline color, string color, string)  
///@argument0 x
///@argument1 y
///@argument2 outline_color
///@argument3 str_color
///@argument4 str
var xx,yy;  
xx = argument[0];  
yy = argument[1];  

//Outline  
draw_set_color_light(argument[2]);  
draw_text(xx+1, yy+1, argument[4]);  
draw_text(xx-1, yy-1, argument[4]);  
draw_text(xx,   yy+1, argument[4]);  
draw_text(xx+1,   yy, argument[4]);  
draw_text(xx,   yy-1, argument[4]);  
draw_text(xx-1,   yy, argument[4]);  
draw_text(xx-1, yy+1, argument[4]);  
draw_text(xx+1, yy-1, argument[4]);  

//Text  
draw_set_color_light(argument[3]);  
draw_text(xx, yy, argument[4]);  