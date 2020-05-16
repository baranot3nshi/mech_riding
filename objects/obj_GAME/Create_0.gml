randomise();

scribble_init("","fnt_mech_rider",false);
scribble_add_font("fnt_mech_rider");

global.current_input = "gamepad"

global.dt = 1;
global.screenfreeze = 0;

global.glitch_FX = 0;

global.fade_FX_alpha = 0;

//mech1's position
global.mech1_x = 0;
global.mech1_y = 0;
global.mech1_rm = undefined;

//drone
global.drone_type = undefined;

//HP & AP
global.HP_max = 3;
global.HP = global.HP_max;
//global.HP = 1;				//death test

global.HP_mech1_max = 3;
global.HP_mech1 = global.HP_mech1_max;

global.AP_chunk = 300;
global.AP = 1*global.AP_chunk;
global.AP_max = 3*global.AP_chunk;

AP_timer = 0;
AP_timer_max = 120;

// CHARGING SYSTEM
global.charging = true;

charge_timer = 0;
charge_timer_max = 120;

//INIT CONTROLLER OBJECTS
instance_create_depth(0,0,0,obj_input);
instance_create_depth(0,0,0,obj_CAMERA);
instance_create_depth(0,0,0,obj_INVENTORY);
instance_create_depth(0,0,0,obj_UI);
instance_create_depth(0,0,0,obj_DEBUG);
instance_create_depth(0,0,0,obj_SAVE);
instance_create_depth(0,0,0,obj_OVERHEAD);
instance_create_depth(0,0,0,obj_MAP);
instance_create_depth(0,0,0,obj_MAPPER);
instance_create_depth(0,0,0,obj_SETTINGS);
instance_create_depth(0,0,0,obj_PAUSE_MENU);

//glitch shader init
BktGlitch_init(); //getting uniform pointers
application_surface_draw_enable(false); //disabling automatic redrawing of the application surface
gb_shader = false;


//TEMP

//volume
audio_group_load(audiogroup_SFX)
audio_group_set_gain(audiogroup_SFX,.5,0)

room_goto_next();

print_fps = false;
show_controls = false;

