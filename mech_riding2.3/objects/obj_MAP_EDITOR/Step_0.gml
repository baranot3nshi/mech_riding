if(mouse_check_button_pressed(mb_left))
{
	if (mouse_check_area(create_x,create_y,create_x+button_width, create_y+button_height))
	{
		//loading room preset
		var new_room = load_JSON_from_file("rm_base2.yy")
		
		//changing the name and giving it a number (provisory)
		new_room[?"name"] = "rm_" + string(map_counter);		map_counter++;
		var new_room_name = new_room[?"name"];
		
		//new_room[?"path"] = "folders/Rooms/" + string(new_room_name) + ".yy";
		
		
		
		//OUTPUT
		show_debug_message("Room Created: " + new_room[? "name"])
		
		save_string_to_JSON(new_room, @"C:\Dropbox (t3nshi)\Projects\BVW\PROJECT\mech_riding2.3\rooms\" + string(new_room_name) + @"\" + string(new_room_name) + ".yy")
		
	}
}