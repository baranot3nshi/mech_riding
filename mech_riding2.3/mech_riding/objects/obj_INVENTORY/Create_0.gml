starting_gear = true;
starting_gear = false;

#region enum
//TYPE OF ITEM
enum item {
	drone1,
	drone2,
	drone3,
	drone4,
	drone5,
	drone6,
	
	drone_size,
	
	sword,
	jetpack,
	wall_jump,
	reflect_bullet,
	
	human_size,
	
	mech_spinjump,
	mech_dash,
	mech_dash_atk,
	mech_hammer,
	
	mech_size,
	
	HPUP,
	APUP,
	
	size
}

//CHARACTERISTIC OF THE ITEMS
enum inv {
	name,
	spr,
	icon,
	menu_spr,
	descr,
	comm1,
	comm2,
	have,
	
	size
}
#endregion

global.inventory = ds_grid_create(item.size,inv.size)

//============================== D R O N E

global.inventory[# item.drone1,			inv.name] =			"Servodrone model 001";
global.inventory[# item.drone1,			inv.descr] =		"Hey, that's me, OG style!";
global.inventory[# item.drone1,			inv.comm1] =		"Shoot";
global.inventory[# item.drone1,			inv.comm2] =		"Power shot";
global.inventory[# item.drone1,			inv.spr] =			spr_drone_1;
global.inventory[# item.drone1,			inv.icon] =			spr_UI_pause_menu_icon_drone1;
global.inventory[# item.drone1,			inv.menu_spr] =		spr_UI_pause_menu_drone1;
global.inventory[# item.drone1,			inv.have] =			true;
															
global.inventory[# item.drone2,			inv.name] =			"Servodrone model 002";
global.inventory[# item.drone2,			inv.descr] =		"Pew pew! Laser beamz";
global.inventory[# item.drone2,			inv.comm1] =		"Shoot";
global.inventory[# item.drone2,			inv.comm2] =		"Laser";
global.inventory[# item.drone2,			inv.spr] =			spr_drone_2;
global.inventory[# item.drone2,			inv.icon] =			spr_UI_pause_menu_icon_drone2;
global.inventory[# item.drone2,			inv.menu_spr] =		spr_UI_pause_menu_drone2;
global.inventory[# item.drone2,			inv.have] =			true;
															
global.inventory[# item.drone3,			inv.name] =			"Servodrone model 003";
global.inventory[# item.drone3,			inv.descr] =		"Blast off! Smoke on the water!!";
global.inventory[# item.drone3,			inv.comm1] =		"Shoot";
global.inventory[# item.drone3,			inv.comm2] =		"Missile";
global.inventory[# item.drone3,			inv.spr] =			spr_drone_2;
global.inventory[# item.drone3,			inv.icon] =			spr_UI_pause_menu_icon_drone3;
global.inventory[# item.drone3,			inv.menu_spr] =		spr_UI_pause_menu_drone3;
global.inventory[# item.drone3,			inv.have] =			true;
															
global.inventory[# item.drone4,			inv.name] =			"Servodrone model 004";
global.inventory[# item.drone4,			inv.descr] =		"idk";
global.inventory[# item.drone4,			inv.comm1] =		"Shoot";
global.inventory[# item.drone4,			inv.comm2] =		"idk";
global.inventory[# item.drone4,			inv.spr] =			spr_drone_4;
global.inventory[# item.drone4,			inv.icon] =			spr_UI_pause_menu_icon_drone4;
global.inventory[# item.drone4,			inv.menu_spr] =		spr_UI_pause_menu_drone1;
global.inventory[# item.drone4,			inv.have] =			true;
															
//============================== H U M A N					
															
global.inventory[# item.sword,			inv.name] =			"Laser Blade";
global.inventory[# item.sword,			inv.descr] =		"Standard issue cadet Laser Blade.";
global.inventory[# item.sword,			inv.comm1] =		"Slash";
global.inventory[# item.sword,			inv.comm2] =		"Vacuum Slash";
global.inventory[# item.sword,			inv.icon] =			spr_item_icon_sword;
global.inventory[# item.sword,			inv.menu_spr] =		spr_UI_pause_menu_player_sword;
global.inventory[# item.sword,			inv.have] =			true;
															
global.inventory[# item.jetpack,		inv.name] =			"Jetpack";
global.inventory[# item.jetpack,		inv.descr] =		"Allows you to float for as long you have Energy.";
global.inventory[# item.jetpack,		inv.comm1] =		"Fly";
global.inventory[# item.jetpack,		inv.comm2] =		0;
global.inventory[# item.jetpack,		inv.icon] =			spr_item_icon_jetpack;
global.inventory[# item.jetpack,		inv.menu_spr] =		spr_UI_pause_menu_player_jetpack;
global.inventory[# item.jetpack,		inv.have] =			true;
															
global.inventory[# item.wall_jump,		inv.name] =			"Gravity Boots";
global.inventory[# item.wall_jump,		inv.descr] =		"Allows you to slide along and jump off walls.";
global.inventory[# item.wall_jump,		inv.comm1] =		0;
global.inventory[# item.wall_jump,		inv.comm2] =		0;
global.inventory[# item.wall_jump,		inv.icon] =			spr_item_icon_wall_jump;
global.inventory[# item.wall_jump,		inv.menu_spr] =		spr_UI_pause_menu_player_boots;
global.inventory[# item.wall_jump,		inv.have] =			true;
															
global.inventory[# item.reflect_bullet,	inv.name] =			"Reflective Blade";
global.inventory[# item.reflect_bullet,	inv.descr] =		"Reflect bullets by hitting them with your blade.";
global.inventory[# item.reflect_bullet,	inv.comm1] =		0;
global.inventory[# item.reflect_bullet,	inv.comm2] =		0;
global.inventory[# item.reflect_bullet,	inv.icon] =			spr_item_icon_sword_reflect;
global.inventory[# item.reflect_bullet,	inv.menu_spr] =		spr_UI_pause_menu_player_sword;
global.inventory[# item.reflect_bullet,	inv.have] =			true;
															
//============================== M E C H					
															
global.inventory[# item.mech_dash,		inv.name] =			"Horizontal propulsors";
global.inventory[# item.mech_dash,		inv.descr] =		"Supercharges your mech's propulsors to dash forward.";
global.inventory[# item.mech_dash,		inv.comm1] =		"Dash";
global.inventory[# item.mech_dash,		inv.comm2] =		0;
global.inventory[# item.mech_dash,		inv.icon] =			spr_item_icon_dash;
global.inventory[# item.mech_dash,		inv.menu_spr] =		spr_UI_pause_menu_mech_legs;
global.inventory[# item.mech_dash,		inv.have] =			true;
															
global.inventory[# item.mech_dash_atk,	inv.name] =			"Drill module";
global.inventory[# item.mech_dash_atk,	inv.descr] =		"Converts your mech's dashing energy into a drill that can pierce the rocks.";
global.inventory[# item.mech_dash_atk,	inv.comm1] =		"Drill";
global.inventory[# item.mech_dash_atk,	inv.comm2] =		0;
global.inventory[# item.mech_dash_atk,	inv.icon] =			spr_item_icon_drill;
global.inventory[# item.mech_dash_atk,	inv.menu_spr] =		spr_UI_pause_menu_mech_hands;
global.inventory[# item.mech_dash_atk,	inv.have] =			true;
															
global.inventory[# item.mech_spinjump,	inv.name] =			"Spiral stabilizer";
global.inventory[# item.mech_spinjump,	inv.descr] =		"Calculates G-Force shifting to improve your mech's vertical propulsion.";
global.inventory[# item.mech_spinjump,	inv.comm1] =		"Spin Jump";
global.inventory[# item.mech_spinjump,	inv.comm2] =		0;
global.inventory[# item.mech_spinjump,	inv.icon] =			spr_item_icon_spinjump;
global.inventory[# item.mech_spinjump,	inv.menu_spr] =		spr_UI_pause_menu_mech_stabilizer;
global.inventory[# item.mech_spinjump,	inv.have] =			true;
															
global.inventory[# item.mech_hammer,	inv.name] =			"Gravity accelerator";
global.inventory[# item.mech_hammer,	inv.descr] =		"Creates downward momentum and allows your mech to smash the ground with great force.";
global.inventory[# item.mech_hammer,	inv.comm1] =		"Hammer Punch";
global.inventory[# item.mech_hammer,	inv.comm2] =		0;
global.inventory[# item.mech_hammer,	inv.icon] =			spr_item_icon_hammer;
global.inventory[# item.mech_hammer,	inv.menu_spr] =		spr_UI_pause_menu_mech_shoulders;
global.inventory[# item.mech_hammer,	inv.have] =			true;

//============================== O T H E R	

global.inventory[# item.HPUP,	inv.name] =			"Health Module";
global.inventory[# item.HPUP,	inv.descr] =		"Boosts your Health up by 2";
global.inventory[# item.HPUP,	inv.comm1] =		0;
global.inventory[# item.HPUP,	inv.comm2] =		0;
global.inventory[# item.HPUP,	inv.icon] =			spr_item_icon_HPUP;
global.inventory[# item.HPUP,	inv.menu_spr] =		undefined;
global.inventory[# item.HPUP,	inv.have] =			5;

global.inventory[# item.APUP,	inv.name] =			"Energy Capsule";
global.inventory[# item.APUP,	inv.descr] =		"Adds one Energy Meter.";
global.inventory[# item.APUP,	inv.comm1] =		0;
global.inventory[# item.APUP,	inv.comm2] =		0;
global.inventory[# item.APUP,	inv.icon] =			spr_item_icon_APUP;
global.inventory[# item.APUP,	inv.menu_spr] =		undefined;
global.inventory[# item.APUP,	inv.have] =			3;

//STARTING GEAR ON
if (starting_gear = true)
{
	global.inventory[# item.drone1,			inv.have] =		false;
	global.inventory[# item.drone2,			inv.have] =		false;
	global.inventory[# item.drone3,			inv.have] =		false;
	global.inventory[# item.drone4,			inv.have] =		false;
	global.inventory[# item.jetpack,		inv.have] =		false;
	global.inventory[# item.wall_jump,		inv.have] =		false;
	global.inventory[# item.reflect_bullet,	inv.have] =		false;
	global.inventory[# item.mech_dash,		inv.have] =		false;
	global.inventory[# item.mech_dash_atk,	inv.have] =		false;
	global.inventory[# item.mech_spinjump,	inv.have] =		false;
	global.inventory[# item.mech_hammer,	inv.have] =		false;
}

