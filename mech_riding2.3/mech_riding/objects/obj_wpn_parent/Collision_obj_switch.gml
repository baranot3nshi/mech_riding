if (other.activating_attack != id)
{
	other.activating_attack = id;
	
	
	with (other)
	{
		var FX_sprite = 0;
		
		if		(state = "on")	{state = "off"; FX_sprite = spr_switch_off_fx;}
		else if (state = "off")	{state = "on";	FX_sprite = spr_switch_on_fx;}
	
		var FX = instance_create_depth(x,y,depth-5,obj_FX_parent)
		FX.sprite_index = FX_sprite;
	}
}