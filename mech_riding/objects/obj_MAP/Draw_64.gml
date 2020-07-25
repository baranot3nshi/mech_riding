if (room = rm_titlescreen){exit;}


var _window_width = (draw_area_width*mtw);
var _window_height = (draw_area_height*mtw);

var _x_half = _window_width/2
var _y_half = _window_height/2

var _top = center_y - _y_half;
var _left = center_x - _x_half;
var _bottom = center_y + _y_half;
var _right = center_x + _x_half;

var _top_height = sprite_get_height(spr_ui_minimap_t)
var _bottom_height = sprite_get_height(spr_ui_minimap_b)

#region cropped minimap
shader_set(shd_clip_rectangle);



var u_bounds = shader_get_uniform(shd_clip_rectangle, "u_bounds");
shader_set_uniform_f(u_bounds,  center_x - _x_half,
								center_y - _y_half, 
								center_x + _x_half, 
								center_y + _y_half);
								
var u_alpha = shader_get_uniform(shd_clip_rectangle, "u_alpha");
shader_set_uniform_f(u_alpha, 1);


if (surface_exists(surf_map))
{draw_surface(surf_map,0,0)}

shader_reset();
#endregion



	//horizontals
	draw_sprite_stretched(spr_ui_minimap_t,0,_left,_top - _top_height,	_window_width,_top_height)
	draw_sprite_stretched(spr_ui_minimap_b,0,_left,_bottom,				_window_width,_bottom_height)
	
	//verticals
	draw_sprite_ext(spr_ui_minimap_s,0, _left,_top,		1,	_window_height,0,c_white,1)
	draw_sprite_ext(spr_ui_minimap_s,0, _right,_top,	-1,	_window_height,0,c_white,1)
	
	//top deco
	draw_sprite(spr_ui_minimap_tl,0, _left, _top);
	draw_sprite_ext(spr_ui_minimap_tl,0, _right, _top,-1,1,0,c_white,1);
	draw_sprite(spr_ui_minimap_tc,0, center_x,_top);
	
	//bot deco
	draw_sprite(spr_ui_minimap_bl,0, _left, _bottom);
	draw_sprite_ext(spr_ui_minimap_bl,0, _right, _bottom,-1,1,0,c_white,1);
	draw_sprite(spr_ui_minimap_bc,0, center_x,_bottom);
	
	//side deco
	draw_sprite(spr_ui_minimap_lc,0, _left, center_y);
	draw_sprite(spr_ui_minimap_rc,0, _right, center_y);
