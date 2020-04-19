if (input_on = true) {input_get();}

//move cursor
if (but_down_pressed)
{
	cursor_pos++;
}

if (but_up_pressed)
{
	cursor_pos--;
}

cursor_pos = clamp(cursor_pos, 0, ts_menu_size-1)

//activate command

if(but_CONFIRM)
{
	script_execute(ts_menu[# cursor_pos, ts_menu_type.script])
}