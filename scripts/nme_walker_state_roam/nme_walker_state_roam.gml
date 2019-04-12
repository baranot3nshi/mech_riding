sprite_index = spr_nme_walker_walk;

x_spd = 1*dir*global.dt
if (place_meeting_array(x+x_spd,y,collider)) {dir = -dir;}

//go to other states
nme_walker_atk();
nme_fall();