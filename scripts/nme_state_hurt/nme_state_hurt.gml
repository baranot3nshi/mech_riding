//GETS HIT IN obj_wpn_parent

//flashing
if (hurt_timer = 0) {alarm[11] = 5;}

//FLY AWAY
x_spd = lerp(x_spd,0,.1);
y_spd = lerp(y_spd,0,.1);

//end atk fase
hurt_timer++;

if (hurt_timer = hurt_timer_max)
{
	hurt_timer = 0;

	stun = false;
	
	//kill if no HP, otherwise go back to idle
	if (HP > 0) 
	{
		state = nme_states.idle;
		idle_timer = 0;
	}
	else 
	{state = nme_states.dead;}
	
	//turn towards character	
	if (obj_player.dir = 1) {dir = -1}
	else {dir = 1}
}