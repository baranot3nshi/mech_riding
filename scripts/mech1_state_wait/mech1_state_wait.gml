//create walls

if (sprite_index!= spr_mech1_exit){image_index = 0; sprite_index = spr_mech1_exit;}

if (!instance_exists(bottom_wall))
{
create_mech1_walls();
}

if (collision_line(bottom_wall.x,bottom_wall.y-1,bottom_wall.x+bottom_wall.sprite_width,bottom_wall.y-1,obj_player,false,false))
{
	state = states.wake;
}

