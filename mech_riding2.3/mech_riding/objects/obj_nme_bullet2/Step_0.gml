x_spd = lengthdir_x(spd*dir, bullet_angle);
y_spd = lengthdir_y(spd, bullet_angle);

x += x_spd  * global.dt;
y += y_spd  * global.dt;

if place_meeting_array(x,y,collider)
{alarm[0] = 1;}
