function choose_from_array(argument0) {
	var array = argument0;

	if (is_array(array)) {return array[irandom_range(0,array_length_1d(array)-1)]}
	else {return array}


}
