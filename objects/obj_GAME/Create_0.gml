randomise();

//DELTA TIME
target_framerate = 60;

freeze_timer = 0;

global.screenfreeze = 0;



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