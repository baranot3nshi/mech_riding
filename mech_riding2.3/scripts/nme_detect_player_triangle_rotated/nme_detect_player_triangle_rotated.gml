///@arg cone_width
///@arg cone_height
///@arg cone_rotation
function nme_detect_player_triangle_rotated(argument0, argument1, argument2) {

	var _radius = argument0;
	var _degree = argument1;
	var _rot = argument2;

	var pBottom_dist  = 0;
	var pBottom_angle = 0;
	var pTop_dist  = 0;
	var pTop_angle = 0;

	//player sprite center
	var _pxx = obj_player.bbox_left + (obj_player.bbox_right-obj_player.bbox_left)/2
	var _pyy = obj_player.bbox_top + (obj_player.bbox_bottom-obj_player.bbox_top)/2

	//enemy sprite center
	var _exx = bbox_left + (bbox_right-bbox_left)/2
	var _eyy = bbox_top + (bbox_bottom-bbox_top)/2

	//triangle
	_pStart =	[_exx, _eyy]; 
	_pTop =		[_pStart[XX] + _radius, _pStart[YY]]
	_pBottom =	[_pStart[XX] + lengthdir_x(_radius,_degree), _pStart[YY] + lengthdir_y(_radius, _degree)]

	//find rotated pTop
	var pTop_dist  = point_distance (_exx, _eyy, _pTop[XX], _pTop[YY]);
	var pTop_angle = point_direction(_exx, _eyy, _pTop[XX], _pTop[YY]);

	_pTop_rot[XX] = _exx + lengthdir_x(pTop_dist, pTop_angle+_rot);
	_pTop_rot[YY] = _eyy + lengthdir_y(pTop_dist, pTop_angle+_rot);



	//find rotated pBottom
	var pBottom_dist  = point_distance (_exx, _eyy, _pBottom[XX], _pBottom[YY]);
	var pBottom_angle = point_direction(_exx, _eyy, _pBottom[XX], _pBottom[YY]);

	_pBottom_rot[XX] = _exx + lengthdir_x(pBottom_dist, pBottom_angle+_rot);
	_pBottom_rot[YY] = _eyy + lengthdir_y(pBottom_dist, pBottom_angle+_rot);


	var _vision = point_in_triangle(_pxx, _pyy,
									_pStart[XX],		_pStart[YY], 							
									_pTop_rot[XX],		_pTop_rot[YY], 										
									_pBottom_rot[XX],	_pBottom_rot[YY]);
								
	var _obstacle = collision_line(_pxx, _pyy, _exx, _eyy,obj_wall,false,false)

	if (_vision && !_obstacle ||		
	
		_vision && _obstacle &&
		distance_to_object(_vision) < distance_to_object(_obstacle)
		)
	{
		return 1;
	}
	else return 0;


}
