//nme_land
if (place_meeting(x,y + 1, obj_wall))
{
	state = nme_states.idle;
	grounded = false;
}