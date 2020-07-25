///@argument0 pushback
function player_hurt(argument0) {

	if (vulnerable && other.state != nme_states.hurt  && other.state != nme_states.dead)
	{
		x_spd = 0;
		y_spd = 0;

		y -= 3 * global.dt;


		//TAKING DAMAGE
		var dmg = other.dmg;

		if (obj_player.current_mech = mechs.mech1)
		{
			repeat(dmg)
			{
				if (global.HP_mech1 > 0) {global.HP_mech1--;}
				else {global.HP--;}
			}
		}
		else {global.HP -= dmg;}

		//SCREENFX
		global.screenfreeze = 10;
		global.screenshake = argument0;
		global.glitch_FX = argument0;

		//STATE
		state = states.hurt;
		vulnerable = false;

		//PUSHBACK
		var dir_push = point_direction(other.x,other.y,x,y)

		x_spd = lengthdir_x(argument0,dir_push)
	}


}
