///@descr HP, AP, screenfreeze, glitch_FX, pause init

///========== HP ==========///

//clamping to 0 and max
	global.HP = clamp(global.HP,0,global.HP_max)
	global.HP_mech1 = clamp(global.HP_mech1,0,global.HP_mech1_max)

//losing HP is in the script player_hurt
//death is in the player object

///========== AP ==========///
if (global.AP >= global.AP_max) {global.AP = global.AP_max;}

if (!global.charging) 
{
	AP_timer += global.dt
	if (AP_timer >= AP_timer_max)
	{
		global.charging = true;
		AP_timer = 0;
	}
}


if (global.charging) {global.AP += global.dt}
if (global.AP <= 0) {global.charging = false; global.AP = 0;}

global.AP = real_round(global.AP);


///========== screenfreeze ==========///
if (global.screenfreeze > 0)
{
	global.dt = 0;
	global.screenfreeze--;
}
else 	
{
	global.dt = 1;	
}


///========== glitch ==========///
if (global.glitch_FX != 0)
{
	global.glitch_FX --;
	if (global.glitch_FX < 0) {global.glitch_FX = 0;}
}

///========== open_pause_menu ==========///
input_get();

pause_timer++;
if (but_start && room != rm_titlescreen && pause_timer > 10) {fade_fx = "start";}

if (fade_fx = "start")
{
	// set up fading fx
	global.fade_colour = c_black;
	global.fade_FX_alpha += .5;

	// fade start
	if (global.fade_FX_alpha >= 1) {fade_fx = "end"	global.PAUSE_MENU_show = true;}
}
if (fade_fx = "end")
{
	
	global.fade_colour = c_black;
	global.fade_FX_alpha -= .07;
	
	// fade end
	if (global.fade_FX_alpha <= 0) {fade_fx = "stop"}
}