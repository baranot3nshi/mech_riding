/// @description DESTROY

instance_destroy();
var destroy = instance_create_depth(x,y,depth,obj_nme_bullet2_destroy);
var hurt = instance_create_depth(x+sprite_get_width(sprite_index)/2*dir,y,depth,obj_hurtbox);
hurt.dmg = dmg;
hurt.sprite_index = spr_hurtbox;

