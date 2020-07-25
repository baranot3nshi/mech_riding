/// @description REFLECT BULLET
if (got(item.reflect_bullet) && reflect && other.reflected_bullet != id && timer <= 1)
{
	other.reflected_bullet = id;
	
	var obj = other.when_reflected;
	
	global.screenfreeze = 15;
	global.screenshake = 5;
	
	var new_bullet = instance_create_depth(other.x,other.y,depth,obj)
	new_bullet.dir = -other.dir;
	new_bullet.image_xscale = -other.image_xscale;
	new_bullet.dmg = other.dmg;
	new_bullet.spd = other.spd;
	new_bullet.x_spd = -other.x_spd;
	new_bullet.y_spd = -other.y_spd;

	instance_destroy(other);
	
	var fx = instance_create_depth(other.x,other.y,depth - 5, obj_FX_parent)
	fx.sprite_index = spr_reflect_fx;
}