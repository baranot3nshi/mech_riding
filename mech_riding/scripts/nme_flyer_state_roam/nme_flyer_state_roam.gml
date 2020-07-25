roam_timer += global.dt

//start hovering
if (y_spd = 0) {y_spd = .1*v_dir;}

//accelerate + decelerate
if (abs(y_spd) < abs(hover_spd)) {y_spd = lerp(0,				hover_spd*v_dir,	.1);}
else							 {y_spd = lerp(hover_spd*v_dir,	0,					.1);}

//turn around up and down
if (roam_timer = roam_timer_max)
{
	roam_timer = 0;
	v_dir = -v_dir;
	y_spd = 0;
}

//go to other states
if (nme_detect_player_circle(follow_dist/4) ||
	nme_detect_player_triangle(follow_dist, follow_dist))
{
	state = nme_states.follow;
}
