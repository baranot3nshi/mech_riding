//ANIMATION
instance_create_depth(x,y,depth-5,shoot_charge_animation)

//BULLET
bullet = instance_create_depth(x,y,depth-10,shoot_charge_bullet_type)

audio_play_sound(shoot_charge_snd,5,0)

if (!target && target != undefined)
{bullet.dir = point_direction(x,y,x+obj_player.dir,y)}
else
{
	var _txx = target.bbox_left + (target.bbox_right-target.bbox_left)/2
	var _tyy = target.bbox_top + (target.bbox_bottom-target.bbox_top)/2

	bullet.dir = point_direction(x,y,_txx,_tyy)
}


//BACK TO FOLLOW
state = drone_states.follow;
shoot_timer = shoot_charge_cooldown;