if (sprite_index = spr_mech1_enter)
{
	obj_player.current_mech = mechs.mech1;
	

	
	instance_destroy();
	
	obj_player.x = x;
	obj_player.y = y;
	obj_player.can_move = true;
	obj_player.state = states.on_ground;
}

else if (sprite_index = spr_mech1_exit)
{
	sprite_index = spr_mech1_enter_front; 
	enter_back =	 instance_create_depth(x,y,obj_player.depth+5,obj_mech1_enter_back);
	enter_back.image_xscale = image_xscale;
}