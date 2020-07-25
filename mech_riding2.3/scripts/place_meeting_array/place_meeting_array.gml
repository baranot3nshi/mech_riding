///place_meeting_array(x,y,obj)
///@param x
///@param y
///@param obj
function place_meeting_array(argument0, argument1, argument2) {

	var collider = argument2;
	if (is_array(collider))
	{
	    for (var i = 0; i < array_length_1d(collider); i++)
	    {
	        if(place_meeting(argument0, argument1, collider[i]))
	            return true;
	    }
	    return false;
	}
	else {
	    return place_meeting(argument0, argument1, collider);
	}


}
