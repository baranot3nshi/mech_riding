/// @description DESTROY

instance_destroy();
var destroy = instance_create_depth(x,y,depth,obj_nme_bullet1_destroy);
var hurt = instance_create_depth(x+sprite_get_width(sprite_index)/2*dir,y,depth,obj_wpn_hurtbox);
hurt.sprite_index = spr_hurtbox;
hurt.dmg = dmg;
destroy.image_xscale = image_xscale;
destroy.sprite_index = spr_bullet1_reflected_destroy;
