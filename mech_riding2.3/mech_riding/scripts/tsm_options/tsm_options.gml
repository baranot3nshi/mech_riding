function tsm_options() {
	//opens the options menu

	if (input_on) {audio_play_sound(snd_menu_confirm,0,false)}
	input_on = false;

	global.SETTINGS_show = true;




}
