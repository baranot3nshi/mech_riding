//starts the game on the next room (eventually will be the first room in the whole game and the cutscene)

input_on = false;
global.fade_colour = c_black;
global.fade_FX_alpha += .015;


if (global.fade_FX_alpha >= 1)
{
	room_goto_next();
	instance_create_depth(0,0,0,obj_GAMESTARTER);
}
