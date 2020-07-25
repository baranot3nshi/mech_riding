function create_fx(argument0, argument1) {
	//create a sprite at a random position inside the object's hitbox

	var _hw = (bbox_right - bbox_left)/2; // half width
	var _hh = (bbox_bottom - bbox_top)/2;// half height
	
	var _cx = bbox_right - _hw; // x center
	var _cy = bbox_bottom - _hh;// y center
	
	var _x = random_range(_cx - _hw, _cx + _hw);
	var _y = random_range(_cy - _hh, _cy + _hh);
	
	
	var _fx = instance_create_depth(_x, _y, depth +argument1, argument0)
	
	return _fx;


}
