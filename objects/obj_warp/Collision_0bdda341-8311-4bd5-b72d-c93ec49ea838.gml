room_goto(target_room);

with (other)
{
	x_spd = 0;
	y_spd = 0;
	
	x = other.target_tile_x*tw+tw/2;
	y = other.target_tile_y*tw+tw -1;
	
	state = states.on_ground;
	vulnerable = true;
}

global.screenfreeze = 10;
global.glitch_FX = 6;

switch(image_angle)
{
	case 0:		global.screenyank_y = - yank; break;
	case 90:	global.screenyank_x = - yank; break;
	case 180:	global.screenyank_y = + yank; break;
	case 270:	global.screenyank_x = + yank; break;
}