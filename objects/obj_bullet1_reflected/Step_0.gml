event_inherited();
x += spd  * global.dt * dir;

if place_meeting_array(x,y,collider)
{alarm[0] = 1;}
