grounded = true;
can_move = false; //is set again to true in Animation End
x_spd = 0;

enum atk 
{
	atk1_init,
	atk1,
	atk1_post,
	atk2_init,
	atk2,
	atk2_post,
	safe,
	reset
}

if (atk_step = atk.atk1_init){atk_step = atk.atk1}
//==========================================================================================
#region STEP ATK1 !charged	- normal first atk
//==========================================================================================
if (atk_step = atk.atk1 && (!charging || (charging && global.AP < global.charge)))
{
	//player anim
	if (sprite_index != spr_player_atk1) {image_index = 0;}
	sprite_index = spr_player_atk1;

	//atkFX (atk collision is inside FX)
	if (!instance_exists(obj_player_atk1))
	{
		//FX offset is set in horizontal movement
		var atk1FX = instance_create_depth(x, y, depth - 5, obj_player_atk1);
		atk1FX.image_xscale = image_xscale;
	}
	atk_step = atk.atk1_post;
}

if (atk_step = atk.atk1_post)
{
	//go to atk2
	atk2_timer = 0;
	atk1_timer ++;
	
	if (but_ATK_pressed && atk1_timer > atk_timer_max/3 && atk1_timer < atk_timer_max)
	{
		atk_step = atk.safe;
	}
	
	if (atk1_timer > atk_timer_max) {atk_step = atk.reset;}
}

#endregion
//==========================================================================================
#region STEP ATK1 charged	- charge atk
//==========================================================================================
if (atk_step = atk.atk1 && charging && global.AP >= global.charge)
{
	if (sprite_index != spr_player_atk1_charge_anim) {image_index = 0;} //AP reduction is here bc it only happens once
	sprite_index = spr_player_atk1_charge_anim;

	//atkFX
	if (!instance_exists(obj_player_atk_charge))
	{
		var atkcFX = instance_create_depth(x, y-16, depth - 5, obj_player_atk_charge);
		atkcFX.image_xscale = image_xscale
	}
	
	
	//STEP RESET and AP REDUCTION activated in Animation End
}

#endregion
//==========================================================================================
#region STEP SAFE			- preventing button to be pressed twice with one push from atk1 to atk2
//==========================================================================================
if (atk_step = atk.safe)
{
	atkmid_timer++;
	if (atkmid_timer = 5)
	{
		atk_step = atk.atk2;
	}
}
#endregion
//==========================================================================================
#region STEP ATK2			- second atk
//==========================================================================================
if(atk_step = atk.atk2)
{
	//player anim
	if (sprite_index != spr_player_atk2) 
	{image_index = 0;}
	sprite_index = spr_player_atk2;

	if (instance_exists(obj_player_atk1)){instance_destroy(obj_player_atk1)}
	//atkFX
	if (!instance_exists(obj_player_atk2))
	{
		var atk2FX = instance_create_depth(x, y, depth - 5, obj_player_atk2);
		atk2FX.image_xscale = image_xscale
	}
	atk_step = atk.atk2_post
}
 
if (atk_step = atk.atk2_post)
{
	//go to atk1
	atk1_timer = 0;
	atk2_timer ++;
	
	if (but_ATK_pressed && atk1_timer > atk_timer_max/3 && atk2_timer < atk_timer_max)
	{
		atk_step = atk.atk1;
	}
	
	if (atk2_timer > atk_timer_max) {atk_step = atk.reset;}
}
#endregion
//==========================================================================================
#region STEP RESET (sometimes activated from Animation End)
if (atk_step = atk.reset)
//==========================================================================================
{
	atk_charge_timer = 0;
	atk1_timer = 0;
	atkmid_timer = 0;
	atk2_timer = 0;
	state = states.on_ground;
	can_move = true;
	atk_step = atk.atk1_init;
	
	image_speed = 1;
}

#endregion
//==========================================================================================