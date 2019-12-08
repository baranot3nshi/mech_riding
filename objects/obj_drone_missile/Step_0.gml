if(spd < max_spd) spd += accel;

if (step = 0)
{
	x_spd = lengthdir_x(spd,dir)
	y_spd = lengthdir_y(spd,dir)
}

x += x_spd * global.dt;
y += y_spd * global.dt;

if place_meeting_array(x,y,collider)
{alarm[0] = 1;}

var _o = 6
var _x = x+random_range(-_o,0) - x_spd
var _y = y+random_range(-_o,0) - y_spd


//SMOKE FX
if (global.dt != 0) instance_create_depth( _x,_y,depth+5,obj_dust_particle)