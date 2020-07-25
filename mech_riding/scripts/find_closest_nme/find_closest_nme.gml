/// @func find_closest_nme()
/// @desc {inst} finds the nearest valid target in front of the player
/// @arg range_w
/// @arg range_h

var range_w = argument0;
var range_h = argument1;

var _face = obj_player.dir // left or right, -1 or 1

var x_offset = -50*_face;
var y_offset = -8;

var _playerX = obj_player.x + x_offset;
var _playerY = obj_player.y + y_offset;


var _lastDist = -1;
var _target = noone;
var _inRange = false;
var _obstacle = false;

	//triangle
    _pStart =	[_playerX, _playerY];
    _pTop =		[_pStart[0] + range_w * _face, _pStart[1] - range_h / 2]
    _pBottom =	[_pStart[0] + range_w * _face, _pStart[1] + range_h / 2]

with (obj_nme_parent)
{
	
	var _txx = bbox_left + (bbox_right-bbox_left)/2
	var _tyy = bbox_top + (bbox_bottom-bbox_top)/2

    
	_inRange = point_in_triangle(_txx, _tyy,
									other._pStart[0],	other._pStart[1], 							
									other._pTop[0],		other._pTop[1], 										
									other._pBottom[0],	other._pBottom[1]);
										
	_obstacle = collision_line(_txx,_tyy,obj_player.x,obj_player.y,obj_wall,false,false)
	 
	//check inside the triangle
    if (	_inRange
	//check if in front of player
		&&  ((_face && x > obj_player.x) ||
			(!_face && x < obj_player.x))
	//check for walls
		&& !_obstacle
		 )
	{
        var _dist = point_distance(_playerX, _playerY, _txx, _tyy);
		
        if (_dist < _lastDist || _lastDist == -1)
		{
            _lastDist = _dist;
            _target = id;
        }
		
		else if (_dist == _lastDist) {break;}
    }
}

return _target;