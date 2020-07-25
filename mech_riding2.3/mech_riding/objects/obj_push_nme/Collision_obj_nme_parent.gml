with (other)
{
	if (!place_meeting_array(x+5*other.dir, y, collider))
	{
		if (other.dir = 1)  {x = other.bbox_right;}
		else				{x = other.bbox_left;}
	}
}