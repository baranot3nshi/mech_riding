hair_lerp = .7
X = -4;
Y = -15;

timer = 0;
anim_X_offset = 0;
anim_Y_offset = 0;

upixel_h = shader_get_uniform(sh_draw_outline, "pixel_h")
upixel_w = shader_get_uniform(sh_draw_outline, "pixel_v")
texel_w = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texel_h = texture_get_texel_height(sprite_get_texture(sprite_index,0));

surface_hair = 0;
