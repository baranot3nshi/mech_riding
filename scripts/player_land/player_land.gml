if (place_meeting(x,y + 1, obj_wall))
{
	state = states.on_ground;
	
	repeat(6)
	{
		create_dust_particle();
	}
	
}

var _plat = instance_place(x,y+1,obj_platform)
if (_plat && _plat.y > y)
{
	state = states.on_ground;
	
	repeat(6)
	{
		create_dust_particle();
	}
}