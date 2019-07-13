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

if (human_atk_step = atk.atk1_init){human_atk_step = atk.atk1}
//==========================================================================================
#region STEP ATK1
//==========================================================================================
if (human_atk_step = atk.atk1)
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
	
	human_atk_step = atk.atk1_post;
}

if (human_atk_step = atk.atk1_post)
{
	//go to atk2
	human_atk2_timer = 0;
	human_atk1_timer ++;
	
	if (but_ATK_pressed && human_atk1_timer > human_atk_timer_max/3 && human_atk1_timer < human_atk_timer_max)
	{
		human_atk_step = atk.safe;
	}
	
	if (human_atk1_timer > human_atk_timer_max) {human_atk_step = atk.reset;}
}

#endregion
//==========================================================================================
#region STEP SAFE			- preventing button to be pressed twice with one push from atk1 to atk2
//==========================================================================================
if (human_atk_step = atk.safe)
{
	human_atkmid_timer++;
	if (human_atkmid_timer > 5)
	{
		human_atk_step = atk.atk2;
		human_atkmid_timer = 0;
	}
}
#endregion
//==========================================================================================
#region STEP ATK2			- second atk
//==========================================================================================
if(human_atk_step = atk.atk2)
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
	human_atk_step = atk.atk2_post
}
 
if (human_atk_step = atk.atk2_post)
{
	human_atk1_timer = 0;
	human_atk2_timer ++;
	
	if (human_atk2_timer > human_atk_timer_max) {human_atk_step = atk.reset;}
}
#endregion
//==========================================================================================
#region STEP RESET (sometimes activated from Animation End)
if (human_atk_step = atk.reset)
//==========================================================================================
{
	human_atk1_timer = 0;
	human_atkmid_timer = 0;
	human_atk2_timer = 0;
	state = states.on_ground;
	can_move = true;
	human_atk_step = atk.atk1_init;
}

#endregion
//==========================================================================================