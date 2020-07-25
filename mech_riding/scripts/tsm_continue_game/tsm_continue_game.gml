//auto loads the latest save

// loads the saved game

// play sound, then turn off input
if (input_on) {audio_play_sound(snd_menu_confirm,0,false)}
input_on = false;

// fade settings
global.fade_colour = c_black;
global.fade_FX_alpha += .015;


if (global.fade_FX_alpha >= 1)
{
	global.LOAD = true;
}
