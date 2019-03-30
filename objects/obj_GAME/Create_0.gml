randomise();

global.HP_max = 3;
global.HP = global.HP_max;

global.AP = 0;
global.AP_max = 10;

//creates other controller objects
instance_create_depth(0,0,0,obj_input)
instance_create_depth(0,0,0,obj_CAMERA)
instance_create_depth(0,0,0,obj_RENDER_outline)