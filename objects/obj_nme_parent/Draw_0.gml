// Inherit the parent event
//event_inherited();

//if alarm[11] is running, draw the sprite all white
if (alarm[11] > -1)
{
gpu_set_fog(true,c_white,0,1)
draw_self_pgrid();
gpu_set_fog(false,c_white,0,1)
}
//otherwise, draw the sprite normally
else
{

//shaking
draw_sprite_ext(sprite_index,
				image_index,
				round(spr_x),
				round(spr_y),
				image_xscale,
				image_yscale,
				image_angle,
				image_blend,
				image_alpha);
}


//var c1 = c_black;
//var c2 = c_red;

//draw_text_outlined(x-5,y,c1,c2,HP)

//draw_text(x-5,y+15, "HT = " + string(hits_taken));
//draw_text(x-5,y+30, "HA = " + string(hitting_atk));