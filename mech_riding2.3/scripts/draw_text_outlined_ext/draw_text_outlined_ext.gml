///draw_text_outlined(x, y, outline color, string color, string)  
///@argument0 x
///@argument1 y
///@argument2 outline_color
///@argument3 str_color
///@argument4 str
///@argument5 sep
///@argument6 w
function draw_text_outlined_ext() {

	var xx,yy;  
	xx = argument[0];  
	yy = argument[1];  

	//Outline  
	draw_set_color_light(argument[2]);  
	draw_text_ext(xx+1, yy+1, argument[4],argument[5], argument[6]);  
	draw_text_ext(xx-1, yy-1, argument[4],argument[5], argument[6]);  
	draw_text_ext(xx,   yy+1, argument[4],argument[5], argument[6]);  
	draw_text_ext(xx+1,   yy, argument[4],argument[5], argument[6]);  
	draw_text_ext(xx,   yy-1, argument[4],argument[5], argument[6]);  
	draw_text_ext(xx-1,   yy, argument[4],argument[5], argument[6]);  
	draw_text_ext(xx-1, yy+1, argument[4],argument[5], argument[6]);  
	draw_text_ext(xx+1, yy-1, argument[4],argument[5], argument[6]);  

	//Text  
	draw_set_color_light(argument[3]);  
	draw_text_ext(xx, yy, argument[4],argument[5],argument[6]);  


}
