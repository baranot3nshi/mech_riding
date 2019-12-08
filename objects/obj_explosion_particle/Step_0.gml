//Y
if (y_spd < fall_spd_max)
{
	y_spd += weight * global.dt;
}

//apply movement
if (!place_meeting_array(x,y+y_spd,collider))
{
	y += y_spd * global.dt;
}
else //BOUNCE Y
{
	y_spd = -(y_spd/3)*2 * global.dt;

}

//X
if (!place_meeting_array(x+x_spd,y,collider))
{
	x += x_spd * global.dt;
}
else //BOUNCE X
{
	x_spd = -(x_spd/3)*2 * global.dt;
}


x_spd = lerp(x_spd,0,.05 * global.dt);
dir = sign(x_spd)


timer += global.dt
if (timer >= lifespan) {instance_destroy();}
if (timer > lifespan/3*2 && timer % 2 = 0) 
{
	visible = true ? visible = false : visible = true
}