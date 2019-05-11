sprite_index = spr_nme_walker_walk;
grounded = true;

x_spd = 1*dir*global.dt
if (place_meeting_array(x+x_spd,y,collider)) {dir = -dir;}

//go to other states
nme_detect_player(nme_states.atk1,110);
nme_fall();