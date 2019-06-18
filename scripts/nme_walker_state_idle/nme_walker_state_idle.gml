sprite_index = sprite_idle;
grounded = true;
x_spd = lerp(x_spd, 0, .5);
y_spd = lerp(y_spd, 0, .5);

idle_timer++;
if (idle_timer == idle_timer_max)
{
	state = nme_states.roam;
	idle_timer = 0;
}

//go to other states
if (nme_detect_player_rectangle(110, -sprite_height)) {state = nme_states.atk1}
nme_fall();