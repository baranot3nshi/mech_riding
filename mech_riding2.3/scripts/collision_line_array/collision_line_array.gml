///collision_line_array(x,y,obj)
///@param x1
///@param y1
///@param x2
///@param y2
///@param obj
///@param prec
///@param notme
function collision_line_array(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	var collider = argument4;
	if (is_array(collider))
	{
	    for (var i = 0; i < array_length_1d(collider); i++)
	    {
	        if(collision_line(argument0, argument1,argument2,argument3, collider[i],argument5,argument6))
	            return true;
	    }
	    return false;
	}
	else {
	    return collision_line(argument0, argument1,argument2,argument3, collider,argument5,argument6);
	}


}
