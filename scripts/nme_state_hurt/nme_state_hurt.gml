//GETS HIT IN obj_wpn_parent

//flashing
if (hurt_timer = 0) {alarm[11] = 5;}

//can fall
grounded = false;


//FLY AWAY
x_spd = lerp(x_spd,0,.3);


//end atk fase
hurt_timer++;

if (hurt_timer = hurt_timer_max)
{
	hurt_timer = 0;
	
	x_spd = 0;
	y_spd = 0;

	stun = false;
	
	//kill if no HP, otherwise go back to idle
	if (HP > 0) 
	{state = nme_states.idle;}
	else 
	{state = nme_states.dead;}
	
	//turn towards character
	if (point_direction(x,y,obj_player.x,obj_player.y) - 90 < 180)
	{dir = -1} else {dir = 1}
}