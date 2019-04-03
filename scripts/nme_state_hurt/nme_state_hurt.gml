sprite_index = sprite_hurt;

move_h_nme(x_spd_push);

x_spd_push = lerp(x_spd_push,0,.6);
y_spd_push = lerp(y_spd_push,0,.6);

hurt_timer++;

if (hurt_timer = hurt_timer_max)
{
	hurt_timer = 0;
	state = nme_states.idle;
	x_spd_push = 0;
	y_spd_push = 0;
	vulnerable = true;
}