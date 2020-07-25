if (timer > 20 && parallax_on)
{
	layer_x(layer_0, real_round(lerp(0,global.view_X,.99)));
	layer_x(layer_1, real_round(lerp(0,global.view_X,.95)));
	layer_x(layer_2, real_round(lerp(0,global.view_X,.90)));
	layer_x(layer_3, real_round(lerp(0,global.view_X,.85)));
}
else
{
	timer += global.dt
}