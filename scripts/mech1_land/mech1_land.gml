if (place_meeting(x,y + 1, obj_wall))
{
	state = mech1_states.on_ground;
	repeat(6) {create_dust_particle();}
}