/// ANIMATION ///
if type = "lock"
{
	locked = target.locked;
	
	if (locked && sprite_index != sprite_locked) 
	{
		sprite_index = sprite_locking;
	}
	
	else if (!locked && sprite_index != sprite_unlocked)
	{
		sprite_index = sprite_unlocking
	}
}