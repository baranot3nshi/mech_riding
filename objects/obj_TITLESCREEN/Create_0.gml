#region enums
enum ts_menu_command {

	continue_game,
	new_game,
	load_game,
	options,
	exit_game,

	size
}

enum ts_menu_type {
	
	str,
	script,
	
	size
}
#endregion

input_on = true;
cursor_pos = 0;

#region Menu with save file
ts_menu = ds_grid_create(ts_menu_command.size,ts_menu_type.size);

//continue
ts_menu[# ts_menu_command.continue_game,	ts_menu_type.str] =		"Continue"
ts_menu[# ts_menu_command.continue_game,	ts_menu_type.script] =	tsm_continue_game;

//new game
ts_menu[# ts_menu_command.new_game,			ts_menu_type.str] =		"New Game"
ts_menu[# ts_menu_command.new_game,			ts_menu_type.script] =	tsm_new_game;

//load game
ts_menu[# ts_menu_command.load_game,		ts_menu_type.str] =		"Load Game"
ts_menu[# ts_menu_command.load_game,		ts_menu_type.script] =	tsm_load_game;

//options
ts_menu[# ts_menu_command.options,			ts_menu_type.str] =		"Options"
ts_menu[# ts_menu_command.options,			ts_menu_type.script] =	tsm_options;

//exit game
ts_menu[# ts_menu_command.exit_game,		ts_menu_type.str] =		"Exit Game"
ts_menu[# ts_menu_command.exit_game,		ts_menu_type.script] =	tsm_exit_game;

#endregion

ts_menu_size = ds_grid_width(ts_menu)