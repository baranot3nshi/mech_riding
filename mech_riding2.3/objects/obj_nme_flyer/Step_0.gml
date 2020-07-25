/// @description

// Inherit the parent event
event_inherited();

if (instance_exists(hover_fx))
{
	hover_fx.x = x;
	hover_fx.y = y;
	hover_fx.image_xscale = image_xscale;
}