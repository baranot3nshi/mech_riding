function mech1_land() {
	if (place_meeting(x,y + 1, obj_wall))
	{
		state = states.on_ground;
		repeat(6) {create_dust_particle();}
	}


}
