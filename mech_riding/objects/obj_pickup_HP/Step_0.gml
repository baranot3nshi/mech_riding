// Inherit the parent event
event_inherited();



//FX
fx_timer += global.dt;
if (fx_timer%15 = 0)
{
	fx = create_fx(obj_heal_fx,+1)
}

fx.visible = visible;