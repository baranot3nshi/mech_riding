var vh = global.view_height;
var vw = global.view_width;

var maxHP = global.HP_max;
var HP = global.HP;
var maxHPm1 = global.HP_mech1_max;
var HPm1 = global.HP_mech1;

var start_segment = 20;
var piece_width = sprite_get_width(spr_ui_lifebar_piece)

if (instance_exists(obj_player))
{
	
	//ANIMATION
	if (anim_state = "human" && obj_player.current_mech != mechs.none)
	{
		//anim_state = "go to mech";
		ease++;
		mech1_xx = easing(e_ease.OutBack,ease,-50,50,10)
		if (mech1_xx = 0){anim_state = "mech"; ease = 0;}
	}
		
	if (anim_state = "mech" && obj_player.current_mech = mechs.none)
	{
		//anim_state = "go to human";
		ease++;
		mech1_xx = easing(e_ease.InBack,ease,0,-50,10)
		if (mech1_xx = -50){anim_state = "human"; ease = 0;}
	}
		
		
	
	
	//HUMAN
	if (obj_player.current_mech = mechs.none)
	{
		#region BASIC LIFEBAR

		//DRAW START
		draw_sprite(spr_ui_lifebar_start,0,0,0)

		//DRAW PIECES
		for (var i = 0; i < maxHP - 1; i++;)
		{
			var segment_x = start_segment+piece_width*i
			//draw piece
			draw_sprite(spr_ui_lifebar_piece,0,segment_x,0)
			//draw end
			if (i = maxHP - 2) {draw_sprite(spr_ui_lifebar_end,0,segment_x+piece_width,0)}
		}

		//DRAW BAR
		if (HP > 0)
		{
			var bar_start_x = 10;
			var bar_start_y = 3;
			var bar_end_y = 5;
			var bar_end_x = piece_width * global.HP-1;

			//lerp the end of the bar
			bar_end_x_lerp = lerp(bar_end_x_lerp, bar_end_x, .25)

			//draw the bar
			draw_sprite_stretched(spr_light_violet_pixel,0,bar_start_x,bar_start_y,bar_end_x_lerp,bar_end_y)

		}

		//DRAW LINES
		for (var i = 0; i < maxHP; i++;)
		{
			var segment_x = start_segment+piece_width*i
			draw_sprite(spr_ui_lifebar_line,0,segment_x-1,3)
		}

	#endregion
	}
	
	//MECH
	if (mech1_xx != -50)
	{
		#region MECH1 LIFEBAR

		var yy = 0;

		//DRAW START
		draw_sprite(spr_ui_lifebar_mech1_start,0,mech1_xx,yy)
	
		//DRAW PIECES	
		for (var i = 0; i < maxHP + maxHPm1 - 1; i++)
		{
			var piece_x = mech1_xx + start_segment + piece_width *i
		
			//if it's the last segment, draw the last sprite
			if (i = maxHP + maxHPm1 - 2) {var piece_sprite = spr_ui_lifebar_mech1_last_piece;}
			//otherwise just draw a normal piece
			else {var piece_sprite = spr_ui_lifebar_mech1_piece}
		
			draw_sprite(piece_sprite,0,piece_x,yy);		
		}
	
		//DRAW BAR
		if (HP+HPm1 > 0)
		{
			var bar_start_x = mech1_xx + 10;
			var bar_start_y = 3;
			var bar_end_y = 5;
			var bar_end_x = piece_width * (HP + HPm1) -1;

			//lerp the end of the bar
			mech1_bar_end_x_lerp = lerp(mech1_bar_end_x_lerp, bar_end_x, .25)

			//draw the bar
			draw_sprite_stretched(spr_light_violet_pixel,0,bar_start_x,bar_start_y,mech1_bar_end_x_lerp,bar_end_y)

		}

		//DRAW LINES
		for (var i = 0; i < maxHP + maxHPm1; i++;)
		{
			var segment_x = mech1_xx + start_segment+piece_width*i
			draw_sprite(spr_ui_lifebar_line,0,segment_x-1,3)
		}
		#endregion
		
		#region COSMETICS
		//DRAW LEFT SIDE COSMETICS
		draw_sprite(spr_ui_mech1_corner_bot,0,mech1_xx,vh-1)
		draw_sprite(spr_ui_mech1_side,0,mech1_xx,real_round(vh/2))
		
		//DRAW RIGHT SIDE COSMETICS
		draw_sprite_ext(spr_ui_mech1_corner_bot,0,vw-mech1_xx,vh-1,-1,1,0,c_white,1)
		draw_sprite_ext(spr_ui_mech1_side,0,vw-mech1_xx,real_round(vh/2),-1,1,0,c_white,1)
		//draw_sprite_ext(spr_ui_mech1_corner_top,0,vw-mech1_xx,0,1,1,0,c_white,1)
		#endregion
	}
	
	#region AP
	var APchunk = global.AP_chunk
	var maxAP = global.AP_max;
	var AP = global.AP;
	var APchunks_num = maxAP/APchunk;
	var ap_start_x = 14;
	var bar_w = 5;
	var bar_h = 13;
	
	//TRANSITION ANIMATION
	
	var ap_y = real_round(9 + (mech1_xx - spawn_point)/24)
	
	//DRAW AP BOTTOM
	for (var i = 0; i < APchunks_num; i++;)
	{
		draw_sprite(spr_ui_nrg_bg,0,ap_start_x+piece_width*i,ap_y)
		
		//DRAW BAR
		var full_chunks = APchunk*i //APs up to the point of the chunk you're drawing
		
		if (AP > full_chunks)
		{
			//Xs
			bar_start_x = ap_start_x + 3 + piece_width*i;
			bar_end_x = bar_start_x + bar_w;
			
			//Yx
			bar_start_y = ap_y + 22;
			
			if (AP < full_chunks + APchunk) 
			{
				var AP_in_this_chunk = AP - full_chunks;
				
				bar_end_y = bar_start_y - ((bar_h/APchunk)*AP_in_this_chunk)
			}
			else {bar_end_y = bar_start_y - bar_h}



			draw_set_color_light(c_light_violet)
			//draw the bar
			draw_rectangle(bar_start_x,bar_start_y,bar_end_x,bar_end_y,false)
			
			draw_set_color_light(c_white)
			
			

			//draw the line
			draw_sprite(spr_ui_nrg_bar,0,bar_start_x,(bar_end_y-1))

			
		}
	
	
	}
	
	
	
	//DRAW AP TOP
		for (var i = 0; i < APchunks_num; i++;)
	{
		draw_sprite(spr_ui_nrg_top,0,ap_start_x+piece_width*i,ap_y)
	}
	
	#endregion
}