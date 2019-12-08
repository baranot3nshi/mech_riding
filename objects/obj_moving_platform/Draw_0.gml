//draw_self();
draw_sprite(spr_platform_l,0,x,y);
draw_sprite_ext(spr_platform_l,0,x+image_xscale*tw,y,-1,1,0,c_white,1);

var i = 1; repeat (image_xscale-2)
{
	draw_sprite(spr_platform_c,0,x+i*tw,y)
	i++;
}



//DEBUG
//var _x = 5
//	var _y = 5
//	var c1 = c_black
//	var c2 = c_white
//	var _s = 7;


	//draw_text_outlined(x+_x,y+_y+_s*0,c1,c2,"spd = " + string(spd))
	//draw_text_outlined(x+_x,y+_y+_s*1,c1,c2,"dx = " + string(dx))
	//draw_text_outlined(x+_x,y+_y+_s*2,c1,c2,"x_dir = " + string(x_dir))
	//draw_text_outlined(x+_x,y+_y+_s*3,c1,c2,"x = " + string(x))
	//draw_text_outlined(x+_x,y+_y+_s*4,c1,c2,"start_x = " + string(start_x))
	//draw_text_outlined(x+_x,y+_y+_s*5,c1,c2,"dest_x = " + string(dest_x))