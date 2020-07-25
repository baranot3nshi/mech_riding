///@descr create_textbox 
///@arg text
///@arg portrait
function create_textbox(argument0, argument1) {

	var _textbox = instance_create_depth(0,0,0,obj_TEXT)
	_textbox.text = argument0;
	_textbox.portrait = argument1;


}
