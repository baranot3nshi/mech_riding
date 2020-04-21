starting_gear = true;
//starting_gear = false;

#region enum
//TYPE OF ITEM
enum item {
	drone1,
	drone2,
	drone3,
	drone4,
	
	drone_size,
	
	jetpack,
	wall_jump,
	reflect_bullet,
	
	human_size,
	
	mech_dash,
	mech_dash_atk,
	mech_spinjump,
	mech_hammer,
	
	size
}

//CHARACTERISTIC OF THE ITEMS
enum inv {
	name,
	spr,
	have,
	
	size
}
#endregion

global.inventory = ds_grid_create(item.size,inv.size)

global.inventory[# item.drone1,			inv.name] =		"Servodrone model 001";
global.inventory[# item.drone1,			inv.spr] =		spr_drone_1;
global.inventory[# item.drone1,			inv.have] =		true;
			
global.inventory[# item.drone2,			inv.name] =		"Servodrone model 002";
global.inventory[# item.drone2,			inv.spr] =		spr_drone_2;
global.inventory[# item.drone2,			inv.have] =		true;
				
global.inventory[# item.drone3,			inv.name] =		"Servodrone model 003";
global.inventory[# item.drone3,			inv.spr] =		spr_drone_3;
global.inventory[# item.drone3,			inv.have] =		true;
		
global.inventory[# item.drone4,			inv.name] =		"Servodrone model 004";
global.inventory[# item.drone4,			inv.spr] =		spr_drone_4;
global.inventory[# item.drone4,			inv.have] =		false;
					
global.inventory[# item.jetpack,		inv.name] =		"Jetpack";
global.inventory[# item.jetpack,		inv.spr] =		spr_drone_1;
global.inventory[# item.jetpack,		inv.have] =		true;
				
global.inventory[# item.wall_jump,		inv.name] =		"Gravity Boots";
global.inventory[# item.wall_jump,		inv.spr] =		spr_drone_1;
global.inventory[# item.wall_jump,		inv.have] =		true;

global.inventory[# item.reflect_bullet,	inv.name] =		"Reflective Blade";
global.inventory[# item.reflect_bullet,	inv.spr] =		spr_drone_1;
global.inventory[# item.reflect_bullet,	inv.have] =		true;

global.inventory[# item.mech_dash,		inv.name] =		"Horizontal propulsors";
global.inventory[# item.mech_dash,		inv.spr] =		spr_drone_1;
global.inventory[# item.mech_dash,		inv.have] =		true;

global.inventory[# item.mech_dash_atk,	inv.name] =		"Drill module";
global.inventory[# item.mech_dash_atk,	inv.spr] =		spr_drone_1;
global.inventory[# item.mech_dash_atk,	inv.have] =		true;

global.inventory[# item.mech_spinjump,	inv.name] =		"Spiral stabilizer";
global.inventory[# item.mech_spinjump,	inv.spr] =		spr_drone_1;
global.inventory[# item.mech_spinjump,	inv.have] =		true;

global.inventory[# item.mech_hammer,	inv.name] =		"Gravity accelerator";
global.inventory[# item.mech_hammer,	inv.spr] =		spr_drone_1;
global.inventory[# item.mech_hammer,	inv.have] =		true;



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

