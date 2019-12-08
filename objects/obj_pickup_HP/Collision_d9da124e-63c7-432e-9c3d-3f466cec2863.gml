//check if not full HP

var HP = global.HP
var HP_max = global.HP_max
var HP_mech1 = global.HP_mech1
var HP_mech1_max = global.HP_mech1_max


if (obj_player.current_mech = mechs.none)
{
	if (HP < HP_max) {global.HP++}
}

else if (obj_player.current_mech = mechs.mech1)
{
	if (HP < HP_max) {global.HP++}
	else if (HP_mech1 < HP_mech1_max) {global.HP_mech1++;}
}

instance_destroy();

//EFFECTS
with(obj_player)
{
	repeat(3)	{create_fx(obj_heal_fx,-1)}
	alarm[11] = 8;
	var _fx = instance_create_depth(get_cx(), get_cy(), depth-5, obj_FX_parent)
	_fx.sprite_index = spr_heal_fx_player
}

global.screenfreeze = 5;