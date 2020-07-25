depth = - 570
input_on = true;
cursor_v_pos = 0;
column_pos = "left";
global.SETTINGS_show = false;

#region enums
enum setting_command {
	fullscreen,
	window_size,
	master_volume,
	music_volume,
	sfx_volume,
	screenshake,
	delete_save,

	size
}

enum setting_type {
	str,
	controller,
	content,
	
	size
}



enum menu_controller {
	slider,
	list,
	confirm,
	
	size
}


enum menu_list {
		str,
		script,
		options,
		cursor_pos,
		
		size
}
#endregion

setting_menu = ds_grid_create(setting_command.size, setting_type.size);

#region settings grid content

// fullscreen
setting_menu[# setting_command.fullscreen, setting_type.str] =				"Fullscreen"
setting_menu[# setting_command.fullscreen, setting_type.controller] =		menu_controller.list;
var fullscreen_content = ds_list_create();
fullscreen_content[| menu_list.str] =										["On", "Off"];
fullscreen_content[| menu_list.script] =									toggle_fullscreen;
fullscreen_content[| menu_list.options] =									[true, false];
fullscreen_content[| menu_list.cursor_pos] =								1;
setting_menu[# setting_command.fullscreen, setting_type.content] =			fullscreen_content;

																			
setting_menu[# setting_command.window_size, setting_type.str] =				"Window Size"
setting_menu[# setting_command.window_size, setting_type.controller] =		menu_controller.list;
var wsize_content = ds_list_create();
wsize_content[| menu_list.str] =											["x1", "x2", "x3", "x4", "x5", "x6"];
wsize_content[| menu_list.script] =											wsize_set;
wsize_content[| menu_list.options] =										[1,2,3,4,5,6];
wsize_content[| menu_list.cursor_pos] =										4;
setting_menu[# setting_command.window_size, setting_type.content] =			wsize_content;
																			
setting_menu[# setting_command.master_volume, setting_type.str] =			"Master Volume"
setting_menu[# setting_command.master_volume, setting_type.controller] =	menu_controller.slider;
setting_menu[# setting_command.master_volume, setting_type.content] =		100;
																			
setting_menu[# setting_command.music_volume, setting_type.str] =			"Music Volume"
setting_menu[# setting_command.music_volume, setting_type.controller] =		menu_controller.slider;
setting_menu[# setting_command.music_volume, setting_type.content] =		20;
																			
setting_menu[# setting_command.sfx_volume, setting_type.str] =				"SFX Volume"
setting_menu[# setting_command.sfx_volume, setting_type.controller] =		menu_controller.slider;
setting_menu[# setting_command.sfx_volume, setting_type.content] =			66;
																			
setting_menu[# setting_command.screenshake, setting_type.str] =				"Screenshake"
setting_menu[# setting_command.screenshake, setting_type.controller] =		menu_controller.list;
var screenshake_content = ds_list_create();
screenshake_content[| menu_list.str] =										["On", "Off"];
screenshake_content[| menu_list.script] =									toggle_screenshake;
screenshake_content[| menu_list.options] =									[true, false];
screenshake_content[| menu_list.cursor_pos] =								1;
setting_menu[# setting_command.screenshake, setting_type.content] =			screenshake_content;
																			
setting_menu[# setting_command.delete_save, setting_type.str] =				"Delete Save"
setting_menu[# setting_command.delete_save, setting_type.controller] =		menu_controller.confirm;
//setting_menu[# setting_command.delete_save, setting_type.content] =			setting_fullscreen;

#endregion