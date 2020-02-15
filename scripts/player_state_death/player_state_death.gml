x_spd = 0;
y_spd = 0;

death_timer+=.03

if (death_step = atk.atk1_init)
{
	global.screenfreeze = 1;
	alarm[11] = 1;

	global.screenshake = death_timer;

	if (death_timer > .7)
	{
		global.glitch_FX += death_timer-1;
		global.fade_FX_alpha += .015;
	}


	if (death_timer = 3)
	{
		room_goto(rm_deathscreen)
		death_step = atk.atk1;
	}
}

if (death_step = atk.atk1)
{
}