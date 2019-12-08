if (other.hitting_atk != id)
{
	other.hitting_atk = id;
	if (shatter >= other.hardness)
	{
		//if drilling, create the drill effect
		if (object_index = obj_mech1_dash_atk && !instance_exists(drill_FX))
		{
			var drill = instance_create_depth(x,y,depth-5,drill_FX)
			drill.image_xscale = image_xscale;
		}
	
		with(other)
		{
			instance_destroy();
			global.screenshake = 5;
			global.screenfreeze = 10;
			global.glitch_FX = 3;
		
			//particles are dealt with in the destroyed object's destroy code
		}

	}
	else
	{
		other.shake = 2;
	}
}