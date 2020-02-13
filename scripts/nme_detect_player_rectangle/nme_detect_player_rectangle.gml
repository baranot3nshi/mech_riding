///@arg width
///@arg height

var _width = argument0;
var _height = argument1;

c_length = x + _width*dir;
c_height = y + _height;

var vision = collision_rectangle(x,y,c_length,c_height,obj_player,false,false)
var obstacle = collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false)
	
	
if (vision && !obstacle ||		
	
	vision && obstacle &&
	distance_to_object(vision) < distance_to_object(obstacle)
	)
{
	return 1;
}
else return 0;

