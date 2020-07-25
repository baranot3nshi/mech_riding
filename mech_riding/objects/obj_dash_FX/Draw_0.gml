/// @description DASH FX

#region glitch
//shader_set(shdBktGlitch);

////setting the resolution
//BktGlitch_set_resolution_of_application_surface();

////passing time to the shader (making sure nothing stays static)
//BktGlitch_set_time(current_time * 0.06);

////resets the shader
//BktGlitch_config_zero();

////customize the effect
//BktGlitch_set_channel_shift(.005);

////applies effect
//BktGlitch_set_intensity(1);

//var _xx = x - (10 - timer*.2) * image_xscale;
//draw_sprite_ext(sprite_index, -1, _xx,y,image_xscale,image_yscale,image_angle,c_white,.5)


//shader_reset();

////event_inherited();
 #endregion

var _xx = x - (15 - timer*.4) * image_xscale;

gpu_set_fog(true,color_fix($490aa9),0,0)
draw_sprite_ext(sprite_index, -1, _xx,y,image_xscale,image_yscale,image_angle,c_white,1)
gpu_set_fog(false,$490aa9,0,0)

var _xx = x - (10 - timer*.3) * image_xscale;

gpu_set_fog(true,$f74781,0,0)
draw_sprite_ext(sprite_index, -1, _xx,y,image_xscale,image_yscale,image_angle,c_white,1)
gpu_set_fog(false,$f74781,0,0)

var _xx = x - (5 - timer*.12) * image_xscale;

gpu_set_fog(true,c_white,0,0)
draw_sprite_ext(sprite_index, -1, _xx,y,image_xscale,image_yscale,image_angle,c_white,1)
gpu_set_fog(false,c_white,0,0)