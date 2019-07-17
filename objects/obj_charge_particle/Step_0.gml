x = lerp(x,x_dist,spd*global.dt)
y = lerp(y,y_dist,spd*global.dt)

image_speed = spd*30*global.dt;

//if (!obj_player.atk_charge_timer) {instance_destroy();}