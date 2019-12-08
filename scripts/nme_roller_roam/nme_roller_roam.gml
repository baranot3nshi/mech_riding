#region// check for platforms on all directions and decide where you're standing
//define what it can lock on to
var _plat = [obj_wall_nme, obj_wall];
#region// define direction checks
_check_bot		= collision_line_array(bbox_left,	bbox_bottom+_check_buf,		bbox_right,		bbox_bottom+_check_buf, _plat, false, false)
_check_top		= collision_line_array(bbox_left,	bbox_top-_check_buf, 		bbox_right,		bbox_top-_check_buf,	_plat, false, false)
_check_left		= collision_line_array(bbox_left-_check_buf,	bbox_top,	bbox_left-_check_buf,	bbox_bottom,		_plat, false, false)
_check_right	= collision_line_array(bbox_right+_check_buf,	bbox_top,	bbox_right+_check_buf,	bbox_bottom,		_plat, false, false)

#endregion
#region// do checks and assign side
if (!_check_bot && !_check_top && !_check_left && !_check_right)
{apply_gravity(); x_spd = 0; platform_side = -1}


if (_check_bot)
{
	if (!_check_left && !_check_right)	{platform_side = hurt_dir.bottom;	}
	else if (dir = 1 && _check_right)	{platform_side = hurt_dir.right;	}
	else if (dir = -1 && _check_left)	{platform_side = hurt_dir.left;	}
}

if (_check_top) 
{
	if (!_check_left && !_check_right)	{platform_side = hurt_dir.top;		}
	else if (dir = 1 && _check_left)	{platform_side = hurt_dir.left;		}
	else if (dir = -1 && _check_right)	{platform_side = hurt_dir.right;		}
}

if (_check_left)
{
	if (!_check_top && !_check_bot)		{platform_side = hurt_dir.left;		}
	else if (dir = 1 && _check_bot)	{platform_side = hurt_dir.bottom;	}
	else if (dir = -1 && _check_top)		{platform_side = hurt_dir.top;	}
}

if (_check_right) 
{
	if (!_check_top && !_check_bot)		{platform_side = hurt_dir.right;	}
	else if (dir = 1 && _check_top)	{platform_side = hurt_dir.top;		}
	else if (dir = -1 && _check_bot)		{platform_side = hurt_dir.bottom;		}
}

#endregion
#region// move according to side

switch (platform_side)
{
	case hurt_dir.bottom:
			x_spd = (spd*dir); 
			y_spd = spd;
			sprite_index = spr_nme_roller_walk_bot;
			break;	
				
	case hurt_dir.top:
			x_spd = -(spd*dir);
			y_spd = -spd;
			sprite_index = spr_nme_roller_walk_top;
			break;
				
	case hurt_dir.right:	
			x_spd = spd; 
			y_spd = -(spd*dir);
			sprite_index = spr_nme_roller_walk_right;
			break;
				
	case hurt_dir.left:	
			x_spd = -spd; 
			y_spd = (spd*dir);
			sprite_index = spr_nme_roller_walk_left;
			break;
}
#endregion
#endregion

roam_timer++;
if (roam_timer >= roam_timer_max) //roam_timer_max is randomised in nme_roller_idle
{
	state = nme_states.atk1
	roam_timer = 0;
}