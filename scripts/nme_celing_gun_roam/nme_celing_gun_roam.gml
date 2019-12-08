roam_timer++;

x_spd = spd*dir;

//turn around corners
if (place_meeting_array(x+x_spd,y,collider) ||
	!place_meeting_array(x+sprite_width/2,y-2,collider))
{
	dir = -dir;
}

//fall out of the ceiling
if (!place_meeting_array(x,y-2,collider))
{
	apply_gravity();
	roam_timer = 0;
}

//when the timer ends, stop in place
if (roam_timer > roam_timer_max)
{
	x_spd = 0;
	
	if (sprite_index != spr_nme_ceiling_gun_stop)
	{
		sprite_index = spr_nme_ceiling_gun_stop;
		image_index = 0;
	}
	
	//actual stopping at Animation End

}
//walking animation
else sprite_index = spr_nme_ceiling_gun_walk;