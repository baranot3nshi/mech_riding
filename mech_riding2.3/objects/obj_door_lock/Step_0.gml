
// Inherit the parent event
event_inherited();

/// LOCK ///
//unless one of the switches keeps it locked
with (obj_activator_parent)
{
	other.locked = true;
		
	//array
	if (is_array(target))
		{
			for (var i = 0; i < array_length_1d(target); i++)
			{
				if (target[i] = other.id && state = "on")
				{other.locked = false;} 
			}
		}
			
	else
	//var
	if (target = other.id && state = "on") 
		
		{other.locked = false;}
}


if (locked) 
{
	state = "closed"

}