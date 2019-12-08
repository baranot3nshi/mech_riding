sprite_index = sprite_walk;
grounded = true;

x_spd = spd*dir*global.dt;
if (place_meeting_array(x+x_spd,y,collider) || 
	!place_meeting_array(x+12*dir,y+1,[obj_wall,obj_platform])) 
{
	dir = -dir;
	x_spd = 0;
	y_spd = 0;
}

nme_fall();