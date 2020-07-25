timer = 0;
lifespan = 90;

origin_x = 0;
origin_y = 0;

weight = .3;
fall_spd_max = 5;

image_index = irandom(image_number-1);

//X VARS
dir = 1; //1 = right, -1 = left
x_spd = 0;
x_spd_max = 1;
collider = [obj_wall,obj_platform];
accel = .1;

alarm[0] = 1;



//Y VARS
y_spd = 0;
y_spd -= random_range(1.5,4.5)