///instance_place_array(x,y,obj)
///@param x
///@param y
///@param obj

var collider = argument2;
if (is_array(collider))
{
    for (var i = 0; i < array_length_1d(collider); i++)
    {
        if(instance_place(argument0, argument1, collider[i]))
            return instance_place(argument0, argument1, collider[i]);
    }
    return noone;
}
else {
    return instance_place(argument0, argument1, collider);
}