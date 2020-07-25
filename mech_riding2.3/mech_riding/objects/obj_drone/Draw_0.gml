#region glitch shader
//shader_set(shdBktGlitch);

////resets the shader
//BktGlitch_config_zero();

//BktGlitch_set_jumbleness(random_range(0.70,0.75));
//BktGlitch_set_jumble_resolution(random_range(0.22,0.30));
//BktGlitch_set_jumble_shift(random_range(0.13,0.20));
//BktGlitch_set_channel_shift(0.44333);

//BktGlitch_set_intensity(0.00 + change_FX);

//// Inherit the parent event
//event_inherited();

//shader_reset();

#endregion
//if glitch is enabled, delete next line
event_inherited();

if (alarm[11] != -1) {event_inherited();}

#region //DRAWING THE TARGET RETICULE
if (instance_exists(target) && target != obj_crosshair)
{
	
	var TLx = target.bbox_left	+1		var TLy = target.bbox_top	+1
	var TRx = target.bbox_right			var TRy = target.bbox_top	+1
	var BLx = target.bbox_left	+1		var BLy = target.bbox_bottom  
	var BRx = target.bbox_right			var BRy = target.bbox_bottom   
	
	//target lock on effect
	draw_sprite_ext(lock_on_FX, 0, TLx,	TLy,	 1,	 1, 0, c_white, 1)
	draw_sprite_ext(lock_on_FX, 0, TRx,	TRy,	-1,  1, 0, c_white, 1)
	draw_sprite_ext(lock_on_FX, 0, BLx,	BLy,	 1, -1, 0, c_white, 1)
	draw_sprite_ext(lock_on_FX, 0, BRx,	BRy,	-1, -1, 0, c_white, 1)
}
#endregion

#region//DEBUG

//draw_text(x,y,type_pos)

//draw_set_alpha(.1)
//draw_set_color(c_blue)
////vision triangle
//draw_triangle(_pStart[0], _pStart[1], _pTop[0], _pTop[1], _pBottom[0], _pBottom[1],false)

//draw_set_alpha(.5)
//draw_set_color(c_yellow)

//if (instance_exists(target))
//{
////highlight target
//draw_rectangle(target.bbox_left,target.bbox_top,target.bbox_right,target.bbox_bottom,false)

//var _txx = target.bbox_left + (target.bbox_right-target.bbox_left)/2
//var _tyy = target.bbox_top + (target.bbox_bottom-target.bbox_top)/2
////line of sight
//draw_line(obj_drone.x,obj_drone.y,_txx,_tyy)
//}

//draw_set_alpha(1)
//draw_set_color(c_white)

#endregion