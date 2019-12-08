if (step = 0)
{
	x_spd = lengthdir_x(spd,dir)
	y_spd = lengthdir_y(spd,dir)
}

x += x_spd * global.dt;
y += y_spd * global.dt;

if place_meeting_array(x,y,collider)
{alarm[0] = 1;}
