///@arg radius
function nme_detect_player_circle(argument0) {

	radius = argument0;

	//player sprite center
	var _pxx = obj_player.bbox_left + (obj_player.bbox_right-obj_player.bbox_left)/2
	var _pyy = obj_player.bbox_top + (obj_player.bbox_bottom-obj_player.bbox_top)/2

	//enemy sprite center
	_exx = bbox_left + (bbox_right-bbox_left)/2
	_eyy = bbox_top + (bbox_bottom-bbox_top)/2

	//check for player
	var vision = collision_circle(_exx, _eyy, radius,obj_player,false,false)
	//check for walls
	var obstacle = collision_line(_pxx, _pyy, _exx, _eyy,obj_wall,false,false)
	
	if (vision && !obstacle ||		
	
		vision && obstacle &&
		distance_to_object(vision) < distance_to_object(obstacle)
		)
	{
		return 1;
	}
	else return 0;


}
