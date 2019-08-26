grounded = false;


//go to on_ground
player_land();
//jump
player_jump();
//jump_atk
player_jump_atk();
//wall_slide
player_wall_slide();

if (jump_number = 0 && y_spd > 0) {jump_number = -1}

//go to jetpack
player_jetpack();


sprite_index = spr_player_jump_downward;

