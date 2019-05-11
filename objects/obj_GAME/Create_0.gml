randomise();

//DELTA TIME
target_framerate = 60;
global.dt = (delta_time/1000000) * (target_framerate)

global.screenfreeze = 0;

global.glitch_FX = 0;

//HP & AP
global.HP_max = 3;
global.HP = global.HP_max;

global.AP = 0;
global.AP_max = 1000;

// CHARGING SYSTEM
global.charging = true;
global.charge = 300;

charge_timer = 0;
charge_timer_max = 120;

//INIT CONTROLLER OBJECTS
instance_create_depth(0,0,0,obj_input)
instance_create_depth(0,0,0,obj_CAMERA)
instance_create_depth(0,0,0,obj_RENDER_outline)

BktGlitch_init(); //getting uniform pointers
application_surface_draw_enable(false); //disabling automatic redrawing of the application surface

gb_shader = false;


//TEMP

//volume
audio_group_load(audiogroup_SFX)
audio_group_set_gain(audiogroup_SFX,.01,0)