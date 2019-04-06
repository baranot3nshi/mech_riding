dead_timer++;
if (dead_timer = dead_timer_max)
{
	instance_destroy();
	instance_create_depth(x,y-sprite_height/2,depth-5,dead_FX)
	var piece1 = instance_create_depth(x +6, y-sprite_height/2, depth-5, obj_explosion_particle)
	var piece2 = instance_create_depth(x -6, y-sprite_height/2, depth-5, obj_explosion_particle)
	var piece3 = instance_create_depth(x +6, y-sprite_height/2, depth-5, obj_explosion_particle)
	var piece4 = instance_create_depth(x -6, y-sprite_height/2, depth-5, obj_explosion_particle)
	piece1.origin_x = x; piece1.origin_y = y;
	piece2.origin_x = x; piece2.origin_y = y;
	piece3.origin_x = x; piece3.origin_y = y;
	piece4.origin_x = x; piece4.origin_y = y;
}

if (dead_timer % 2 = 0 )
{if (visible = true) {visible = false} else {visible = true}}