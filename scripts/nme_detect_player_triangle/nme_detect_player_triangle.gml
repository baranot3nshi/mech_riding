///@arg cone_width
///@arg cone_height

var _range_w = argument0;
var _range_h = argument1;

//player sprite center
var _pxx = obj_player.bbox_left + (obj_player.bbox_right-obj_player.bbox_left)/2
var _pyy = obj_player.bbox_top + (obj_player.bbox_bottom-obj_player.bbox_top)/2

//enemy sprite center
var _exx = bbox_left + (bbox_right-bbox_left)/2 -30*dir
var _eyy = bbox_top + (bbox_bottom-bbox_top)/2

//triangle
_pStart =	[_exx, _eyy]; 
_pTop =		[_pStart[XX] + _range_w * dir, _pStart[YY] - _range_h / 2]
_pBottom =	[_pStart[XX] + _range_w * dir, _pStart[YY] + _range_h / 2]


var _vision = point_in_triangle(_pxx, _pyy,
								other._pStart[XX],	other._pStart[YY], 							
								other._pTop[XX],		other._pTop[YY], 										
								other._pBottom[XX],	other._pBottom[YY]);
								
var _obstacle = collision_line(_pxx, _pyy, _exx, _eyy,obj_wall,false,false)

if (_vision && !_obstacle ||		
	
	_vision && _obstacle &&
	distance_to_object(_vision) < distance_to_object(_obstacle)
	)
{
	return 1;
}
else return 0;