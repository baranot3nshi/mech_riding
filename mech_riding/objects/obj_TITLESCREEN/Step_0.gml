if (input_on) {input_get();}

//move cursor
if (but_down_pressed)
{
	cursor_pos++;
	audio_play_sound(snd_menu_move,0,false)
}

if (but_up_pressed)
{
	cursor_pos--;
	audio_play_sound(snd_menu_move,0,false)
}



//activate command

if(but_CONFIRM)
{
	script_execute(ts_menu[# cursor_pos, ts_menu_type.script])	
}


if (file_exists(obj_SAVE.save_file)){var _clamp_min = 0;} else {var _clamp_min = 1;} //skip continue command on first boot
cursor_pos = clamp(cursor_pos, _clamp_min, ts_menu_size)



/// DEBUG ///

if (keyboard_check_pressed(ord("L"))) 
{
	file_delete(obj_SAVE.save_file)
	show_message("save file deleted")
}