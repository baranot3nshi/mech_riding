//nme_land
if (place_meeting_array(x,y + 1, obj_wall))
{
	state = nme_states.idle;
	grounded = false;
}