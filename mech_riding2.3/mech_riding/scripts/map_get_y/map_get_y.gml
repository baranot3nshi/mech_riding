function map_get_y(argument0) {
	var _yy = argument0;
	var _tile = mtw-1;

	var _map_yy = floor((_yy/(sh*tw))) * _tile;

	return _map_yy;


}
