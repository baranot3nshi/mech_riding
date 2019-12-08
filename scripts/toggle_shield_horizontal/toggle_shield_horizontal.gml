///@arg enable

if (argument0 = true)
{
	if (dir = 1) 
	{
		hurt_dir_array[hurt_dir.right] = true;
		hurt_dir_array[hurt_dir.left] = false;
	}

	if (dir = -1) 
	{
		hurt_dir_array[hurt_dir.right] = false;
		hurt_dir_array[hurt_dir.left] = true;
	}
}
else
{
		hurt_dir_array[hurt_dir.right] = false;
		hurt_dir_array[hurt_dir.left] = false;
}