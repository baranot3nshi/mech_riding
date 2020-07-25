///collision_point_array(x,y,obj)
///@param x
///@param y
///@param obj
function collision_point_array(argument0, argument1, argument2) {

	var collider = argument2;
	if (is_array(collider))
	{
	    for (var i = 0; i < array_length_1d(collider); i++)
	    {
	        if(collision_point(argument0, argument1, collider[i],false,false))
	            return true;
	    }
	    return false;
	}
	else {
	    return collision_point(argument0, argument1, collider,false,false);
	}


}
