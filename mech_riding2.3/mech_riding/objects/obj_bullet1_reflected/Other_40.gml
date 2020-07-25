outside_timer += global.dt

if (outside_timer >= outside_timer_max) {instance_destroy();}