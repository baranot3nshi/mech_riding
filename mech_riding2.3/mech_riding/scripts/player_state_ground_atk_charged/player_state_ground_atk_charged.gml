function player_state_ground_atk_charged() {
	grounded = true;
	can_move = false; //is set again to true in Animation End
	x_spd = 0;

	//STEP ATK1 charged	- charge atk

	if (sprite_index != spr_player_atk1_charge_anim)  
	{
		image_index = 0;
		global.AP -= global.AP_chunk/2; //AP reduction is here bc it only happens once
	} 
	sprite_index = spr_player_atk1_charge_anim;

	//atkFX
	if (!instance_exists(obj_player_atk_charge))
	{
		var atkcFX = instance_create_depth(x, y-16, depth - 5, obj_player_atk_charge);
		atkcFX.image_xscale = image_xscale
	}
	
	human_atk1_timer += global.dt
	if (human_atk1_timer >= human_atk_timer_max) 
	{
		human_atk1_timer = 0;
		state = states.on_ground;
		can_move = true;
	}



}
