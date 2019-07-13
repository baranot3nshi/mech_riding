//HP && AP
global.HP = clamp(global.HP,0,global.HP_max)
global.HP_mech1 = clamp(global.HP_mech1,0,global.HP_mech1_max)
if (global.AP >= global.AP_max) {global.AP = global.AP_max;}

if (!global.charging) 
{
	AP_timer++;
	if (AP_timer >= AP_timer_max)
	{
		global.charging = true;
		AP_timer = 0;
	}
}


if (global.charging) {global.AP++}
if (global.AP <= 0) {global.charging = false; global.AP = 0;}

global.AP = real_round(global.AP);

//screenfreeze
if (global.screenfreeze > 0)
{
	global.dt = 0;
	global.screenfreeze--;
}
else 	
{
	global.dt = 1;	
}


//glitch
if (global.glitch_FX != 0)
{
	global.glitch_FX --;
	if (global.glitch_FX < 0) {global.glitch_FX = 0;}
}

