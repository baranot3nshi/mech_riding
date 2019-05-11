//HP && AP
global.HP = clamp(global.HP,0,global.HP_max)
global.AP = clamp(global.AP,0,global.AP_max)

if (global.charging) {global.AP++}

//delta time
global.dt = (delta_time/1000000) * (target_framerate)

//screenfreeze

if (global.screenfreeze > 0)
{
	target_framerate = 0;
	global.screenfreeze--;
}
else 	
{
	target_framerate = 60;	
}

//glitch
if (global.glitch_FX != 0)
{
	global.glitch_FX --;
	if (global.glitch_FX < 0) {global.glitch_FX = 0;}
}

