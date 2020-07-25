var x_offset = 0;
var y_offset = 0;
	

	
if (collision_point(obj_player.x-20*dir, obj_player.y-10, obj_wall, false, false))
{
	x_offset += 12*dir;
}
	
if (collision_point(obj_player.x, y-10, obj_wall, false, false))
{
	y_offset += 12;
}

var mech_offset = 0;
if (obj_player.current_mech = mechs.mech1) {mech_offset = -10}
	
	//FOLLOW	
follow_x = obj_player.x - dir*5 + x_offset;
follow_y = obj_player.y - 20 + mech_offset +y_offset;