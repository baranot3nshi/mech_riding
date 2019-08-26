x_spd = lerp(x_spd,0,.07);
y_spd = lerp(y_spd,0,.07);

dead_timer += global.dt
if (dead_timer = dead_timer_max)
{
	instance_destroy();
	var fx = instance_create_depth(x,y-sprite_height/2,depth-5,dead_FX)
	fx.snd = snd_nme_death;
	
	drop_pickup()
	 
	//repeat(2)
	//{
	//	var piece1 = instance_create_depth(x +6, y-sprite_height/2, depth-5, obj_explosion_particle)
	//	var piece2 = instance_create_depth(x -6, y-sprite_height/2, depth-5, obj_explosion_particle)
	//	piece1.origin_x = x; piece1.origin_y = y;
	//	piece2.origin_x = x; piece2.origin_y = y;
	//}
}

if (dead_timer % 2 = 0 )
{if (visible = true) {visible = false} else {visible = true}}