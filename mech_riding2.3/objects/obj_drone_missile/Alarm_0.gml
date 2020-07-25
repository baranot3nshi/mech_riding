/// @description DESTROY

instance_destroy();
var destroy = instance_create_depth(x,y,depth,obj_explosion_S_FX);
var hurt = instance_create_depth(x,y,depth,obj_wpn_hurtbox);
hurt.dmg = dmg;
hurt.pushback = pushback;
hurt.shatter = shatter;
hurt.image_xscale = 2;
hurt.image_yscale = 2;

//hurt.visible = true;
destroy.image_xscale = image_xscale;

	repeat(6)
	{
		
		var piece1 = instance_create_depth(x - x_spd, y-y_spd, depth-5, obj_explosion_particle)
		piece1.sprite_index = spr_drone_bullet_destroy;
		piece1.lifespan = 10;
		piece1.origin_x = x; piece1.origin_y = y;
	}