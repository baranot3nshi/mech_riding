sprite_index = spr_nme_walker_walk;
grounded = true;

x_spd = 1*dir*global.dt;
if (place_meeting_array(x+x_spd,y,collider)) 
{
	dir = -dir;
	x_spd = 0;
	y_spd = 0;
}

//go to other states
if (nme_detect_player_rectangle(110, -sprite_height))  {state = nme_states.atk1}
nme_fall();