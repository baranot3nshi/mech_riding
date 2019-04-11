global.HP = clamp(global.HP,0,global.HP_max)
global.AP = clamp(global.AP,0,global.AP_max)

if (global.charging) {global.AP++}

global.dt = (delta_time/1000000) * (target_framerate)


//screenfreeze
if (global.screenfreeze != false) 
{
	freeze_timer++;
	if (freeze_timer != 0) {target_framerate = 0}
	if (freeze_timer >= 5)
	{
		target_framerate = 60;
		freeze_timer = 0;
		global.screenfreeze = false;
	}
}