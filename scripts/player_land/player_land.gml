var _plat = instance_place(x, y + 1, obj_platform)

if (place_meeting(x, y + 1, obj_wall) ||
	(_plat && _plat.bbox_top > bbox_bottom)
	&& !but_down)
{
	state = states.on_ground;
	
	repeat(6)
	{
		create_dust_particle();
	}
	
}


