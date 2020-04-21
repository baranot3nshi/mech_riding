input_get();

//setup surface
if(!surface_exists(surf_map)) 
{
surf_map = surface_create(global.view_width,global.view_height);
}
else
{
	
	surface_set_target(surf_map);
	draw_clear_alpha(c_black, 0);

#region //drawing the map

//DEBUG


var _mapX = real_round(center_x - player_pos_x-mtw/2);
var _mapY = real_round(center_y - player_pos_y-mtw/2);

var _tile = mtw-1;

draw_sprite_tiled(spr_ui_minimap_bg,0,_mapX,_mapY)

var _cur_room = 0; repeat(ds_list_size(world_data)) //current room to be drawn
{
	
	var cur_room_data = world_data[| _cur_room];
	
	//get room coords
	var _id =		cur_room_data[? "id"	];
	var _width =	cur_room_data[? "width"	];
	var _height =	cur_room_data[? "height"];
	var _xx =		cur_room_data[? "xx"	];
	var _yy =		cur_room_data[? "yy"	];
	var _doors =	cur_room_data[? "doors"	];
	var _state =	cur_room_data[? "state"	];
	
	
	//single tile stuff
	var i = 0; repeat(_width)
	{
		var j = 0; repeat(_height)
		{
			var _x = _mapX + _xx*_tile + i*_tile;
			var _y = _mapY + _yy*_tile + j*_tile;
			
			#region //draw BG
			if (_state != map_state.uncharted)
			{

				var _bg_spr = 0;
				switch (_state)
				{
					case map_state.charted:		_bg_spr = spr_map_BG_charted; break;
					case map_state.explored:	_bg_spr = spr_map_BG_explored; break;
				}
				//draw background
				draw_sprite(_bg_spr,0,_x,_y)

			}
			#endregion
			
				#region draw_mech_position
				
				var _mech1_x = global.mech1_x;
				var _mech1_y = global.mech1_y;
				var _mech1_rm = global.mech1_rm;
				
				if ( _id = _mech1_rm)
				{
				
					var _real_mech1_x = map_get_x(_mech1_x)
					var _real_mech1_y = map_get_y(_mech1_y)
					
					var _mech1_map_x = _mapX + _xx*_tile	+ _real_mech1_x;
					var _mech1_map_y = _mapY + _yy*_tile	+ _real_mech1_y;
				
					draw_sprite(spr_map_mech1_location,0, _mech1_map_x, _mech1_map_y)
				}
				
				#endregion
				
			
			if (_id = room) 
			{
				cur_room_data[? "state"] = map_state.explored
				
				#region draw_player_position
				
				var _real_px = map_get_x(obj_player.x)
				var _real_py = map_get_y(obj_player.y)
			
				var _px = _mapX + _xx*_tile + _real_px;
				var _py = _mapY + _yy*_tile	+ _real_py;
												
				//set the position of the player to draw the map centered
				player_pos_x = lerp( player_pos_x, _xx*_tile + _real_px, .07)
				player_pos_y = lerp( player_pos_y, _yy*_tile + _real_py, .07)
				
				draw_sprite(spr_map_player_location,-1,_px,_py)
				#endregion
			}
		
			j++;
		}		
		i++;
	}
		if (_state != map_state.uncharted)
		{
			#region//WALLS

	
			//coords
			var _xL = _mapX + _xx*_tile;
			var _xR = _mapX + _xx*_tile + _width*_tile;
			var _yT = _mapY + _yy*_tile;
			var _yB = _mapY + _yy*_tile + _height*_tile;
			var _W = _width*_tile + 1;
			var _H = _height*_tile + 1; //for some reason, stretching vertically adds 1 pixel, so i'm using _tile to remove it
			
			//draw_set_alpha(.7)
			
			//HORIZONTAL WALLS
			draw_sprite_stretched(spr_map_wall,0,_xL,_yT,_W,1)
			draw_sprite_stretched(spr_map_wall,0,_xL,_yB,_W,1)
			
			//VERTICAL WALLS
			draw_sprite_stretched(spr_map_wall,0,_xL,_yT,1,_H)
			draw_sprite_stretched(spr_map_wall,0,_xR,_yT,1,_H)
			
			//draw_set_alpha(1)
			
			#endregion
			#region//DOORS
				
		var d = 0; repeat (ds_list_size(_doors))
		{
			var info_array = _doors[| d]
			var _dxx = info_array[door.xx]
			var _dyy = info_array[door.yy]
			var _door_rot = info_array[door.angle]
			//var _dtype = info_array[door.type]

			var _dx = 0;
			var _dy = 0;
			var _door_sprite = spr_map_door_normal;
				
			switch(_door_rot)
			{
				case door_angle.N:
					_dx = _mapX + _xx*_tile + _dxx*_tile;
					_dy = _mapY + _yy*_tile + _dyy*_tile;	
					break;
				case door_angle.E:
					_dx = _mapX + _xx*_tile + _dxx*_tile + mtw;
					_dy = _mapY + _yy*_tile + _dyy*_tile;	
					break;
				case door_angle.S:
					_dx = _mapX + _xx*_tile + _dxx*_tile + mtw;
					_dy = _mapY + _yy*_tile + _dyy*_tile + mtw;	
					break;
				case door_angle.W:
					_dx = _mapX + _xx*_tile + _dxx*_tile;
					_dy = _mapY + _yy*_tile + _dyy*_tile + mtw;	
					break;
			}
				
			//draw the door

			draw_sprite_ext(_door_sprite,0,_dx,_dy,1,1,_door_rot,c_white,1)

			d++;
		}
				
				
		#endregion
		}
	_cur_room++;
}
#endregion

	surface_reset_target();

}

#region map/minimap toggle
if (but_select) //input
{
	/// view full map
	if (minimap)
	{
		minimap = false;
	
		mini_w  = w_goal;
		mini_h  = h_goal;
		mini_cx = cx_goal;
		mini_cy = cy_goal;
	}

	else
	/// view minimap
	{
		minimap = true;
	 
		w_goal = mini_w  
		h_goal = mini_h  
		cx_goal = mini_cx
		cy_goal = mini_cy
	}
}

//map resize animation
if (minimap)															
{	
draw_area_width  =		lerp(draw_area_width,	w_goal,					.3);
draw_area_height =		lerp(draw_area_height,	h_goal,					.3);
center_x =				lerp(center_x,			cx_goal,				.3);
center_y =				lerp(center_y,			cy_goal,				.3);
}															
else													
{																		
	draw_area_width  =	lerp(draw_area_width,	map_full_w,				.3);
	draw_area_height =	lerp(draw_area_height,	map_full_h,				.3);
	center_x	=		lerp(center_x,			map_full_cx,			.3);
	center_y	=		lerp(center_y,			map_full_cy,			.3);

	// PAUSING IS DONE HERE //
	global.dt = 0;
}

var _window_width = (draw_area_width*mtw);
var _window_height = (draw_area_height*mtw);

var _buff = tw*3;

 var _collision_buffer = _window_height + tw

var _x1 = global.view_X + global.view_width  - _window_width - _buff;
var _y1 = global.view_Y
var _x2 = global.view_X + global.view_width;
var _y2 = global.view_Y + _window_height + _buff;

if (collision_rectangle(_x1, _y1, _x2, _y2,obj_player,false,false) && minimap)
{
	center_y = lerp(center_y, center_y - _collision_buffer, .3)
}
#endregion