outside_timer += global.dt

if (outside_timer >= outside_timer_max) {instance_destroy();}

//obj to turn into if reflected
reflected = obj_bullet1_reflected;