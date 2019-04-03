if (hurt_timer = 0) {alarm[11] = 5;}


sprite_index = sprite_hurt;

//movement
move_h_nme(x_spd_push);

//fade the speed
x_spd_push = lerp(x_spd_push,0,.3);
y_spd_push = lerp(y_spd_push,0,.3);



//end atk fase
hurt_timer++;

if (hurt_timer = hurt_timer_max)
{
	hurt_timer = 0;
	
	x_spd_push = 0;
	y_spd_push = 0;

	
	//kill if no HP, otherwise go back to idle
	if (HP > 0) 
	{state = nme_states.idle; vulnerable = true;}
	else 
	{state = nme_states.dead;}
	
	//turn towards character
	if (point_direction(x,y,obj_player.x,obj_player.y) - 90 < 180)
	{dir = -1} else {dir = 1}
}