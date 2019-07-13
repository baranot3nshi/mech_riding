can_move = false; //is set again to true in Animation End
//grounded = true;
x_spd = 0;

//==========================================================================================
#region STEP ATK1 INIT
//==========================================================================================

if (mech1_atk_step = atk.atk1_init)
{
	if (sprite_index != spr_mech1_atk1_init) {image_index = 0;}
	sprite_index = spr_mech1_atk1_init;
	mech1_atk_init_timer++;
	mech1_atk1_timer ++;
	
	if (mech1_atk_init_timer = mech1_atk_init_timer_max)
	{
		mech1_atk_step = atk.atk1
		mech1_atk_init_timer = 0;
	}
}
#endregion
//==========================================================================================
#region STEP ATK1 !charged	- normal first atk
//==========================================================================================
if (mech1_atk_step = atk.atk1)
{
	//player anim
	if (sprite_index != spr_mech1_atk1) {image_index = 0;}
	sprite_index = spr_mech1_atk1;

	//atkFX (atk collision is inside FX)
	if (!instance_exists(obj_mech1_atk1))
	{
		//FX offset is set in horizontal movement
		var atk1FX = instance_create_depth(x+37*sign(image_xscale), y-18, depth - 5, obj_mech1_atk1);
		atk1FX.image_xscale = image_xscale;
	}
mech1_atk_step = atk.atk1_post
}

if(mech1_atk_step = atk.atk1_post)
{
	//go to atk2
	mech1_atk2_timer = 0;
	mech1_atk1_timer ++;
	
	if (but_ATK_pressed && 
	mech1_atk1_timer < mech1_atk_timer_max + mech1_atk_init_timer_max)
	{
		if (mech1_atk1_timer > mech1_atk_timer_max -3)
		mech1_atk_step = atk.safe;
	}
	
	if (mech1_atk1_timer > mech1_atk_timer_max + mech1_atk_init_timer_max) {mech1_atk_step = atk.reset;}
}

#endregion
//==========================================================================================
#region STEP SAFE			- preventing button to be pressed twice with one push from atk1 to atk2
//==========================================================================================
if (mech1_atk_step = atk.safe)
{
	mech1_atkmid_timer ++
	if (!but_ATK_charge || but_ATK_charge && mech1_atkmid_timer = 2) {mech1_atk_step = atk.atk2_init;}
}
#endregion
//==========================================================================================
#region STEP ATK2 INIT
//==========================================================================================

if (mech1_atk_step = atk.atk2_init)
{
	if (sprite_index != spr_mech1_atk2_init) {image_index = 0;}
	sprite_index = spr_mech1_atk2_init;
	mech1_atk_init_timer++;
		
	if (mech1_atk_init_timer = mech1_atk_init_timer_max)
	{
		mech1_atk_step = atk.atk2
		mech1_atk_init_timer = 0;
	}
}
#endregion
//==========================================================================================
#region STEP ATK2			- second atk
//==========================================================================================
if(mech1_atk_step = atk.atk2)
{
	//player anim
	if (sprite_index != spr_mech1_atk2) {image_index = 0;}
	sprite_index = spr_mech1_atk2;

	if (instance_exists(obj_mech1_atk1))
	{instance_destroy(obj_mech1_atk1)}
	
	//atkFX
	if (!instance_exists(obj_mech1_atk2))
	{
		var atk1FX = instance_create_depth(x+37*sign(image_xscale), y-18, depth - 5, obj_mech1_atk2);
		atk1FX.image_xscale = image_xscale;
	}
	
	mech1_atk_step = atk.atk2_post
}

if(mech1_atk_step = atk.atk2_post)
{
	mech1_atk2_timer ++;	
	if (mech1_atk2_timer > mech1_atk_timer_max) {mech1_atk_step = atk.reset;}
}
#endregion
//==========================================================================================
#region STEP RESET (sometimes activated from Animation End)
if (mech1_atk_step = atk.reset)
//==========================================================================================
{
	atk_charge_timer = 0;
	mech1_atk_init_timer = 0;
	mech1_atk1_timer = 0;
	mech1_atkmid_timer = 0;
	mech1_atk2_timer = 0;
	state = states.on_ground;
	can_move = true;
	mech1_atk_step = atk.atk1_init;
}

#endregion
//==========================================================================================