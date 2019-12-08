//player sprite center
var _pxx = obj_player.bbox_left + (obj_player.bbox_right-obj_player.bbox_left)/2
var _pyy = obj_player.bbox_top + (obj_player.bbox_bottom-obj_player.bbox_top)/2

//position from where to attack && dir
if(x > obj_player.x) {var atk_pos = _pxx + atk_distance; dir = -1;}
else				 {var atk_pos = _pxx - atk_distance; dir = 1;}

//follow the player's Y
var dir_follow = point_direction(x,y,atk_pos,_pyy);
y_spd = lengthdir_y(spd,dir_follow);

//follow the player's X
if (x < atk_pos-1 || x > atk_pos+1)
{
	x_spd = lengthdir_x(spd,dir_follow);
}
//if the X lines up, attack
else
{
	x_spd = 0;
	if (nme_detect_player_rectangle(atk_distance, 1)) {state = nme_states.atk1;}
}

//lose sight
if (!nme_detect_player_circle(follow_radius))
 {state = nme_states.idle;}