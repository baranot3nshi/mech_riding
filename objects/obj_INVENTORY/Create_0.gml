starting_gear = true;
starting_gear = false;

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

inventory_array[item.drone1,			inv.name] =		"Servodrone model 001";
inventory_array[item.drone1,			inv.spr] =		spr_drone_1;
inventory_array[item.drone1,			inv.have] =		true;
										
inventory_array[item.drone2,			inv.name] =		"Servodrone model 002";
inventory_array[item.drone2,			inv.spr] =		spr_drone_2;
inventory_array[item.drone2,			inv.have] =		true;
										
inventory_array[item.drone3,			inv.name] =		"Servodrone model 003";
inventory_array[item.drone3,			inv.spr] =		spr_drone_3;
inventory_array[item.drone3,			inv.have] =		true;
										
inventory_array[item.drone4,			inv.name] =		"Servodrone model 004";
inventory_array[item.drone4,			inv.spr] =		spr_drone_4;
inventory_array[item.drone4,			inv.have] =		false;
										
inventory_array[item.jetpack,			inv.name] =		"Jetpack";
inventory_array[item.jetpack,			inv.spr] =		spr_drone_1;
inventory_array[item.jetpack,			inv.have] =		true;
										
inventory_array[item.wall_jump,			inv.name] =		"Gravity Boots";
inventory_array[item.wall_jump,			inv.spr] =		spr_drone_1;
inventory_array[item.wall_jump,			inv.have] =		true;

inventory_array[item.reflect_bullet,	inv.name] =		"Reflective Blade";
inventory_array[item.reflect_bullet,	inv.spr] =		spr_drone_1;
inventory_array[item.reflect_bullet,	inv.have] =		true;

inventory_array[item.mech_dash,			inv.name] =		"Horizontal propulsors";
inventory_array[item.mech_dash,			inv.spr] =		spr_drone_1;
inventory_array[item.mech_dash,			inv.have] =		true;

inventory_array[item.mech_dash_atk,		inv.name] =		"Drill module";
inventory_array[item.mech_dash_atk,		inv.spr] =		spr_drone_1;
inventory_array[item.mech_dash_atk,		inv.have] =		true;

inventory_array[item.mech_spinjump,		inv.name] =		"Spiral stabilizer";
inventory_array[item.mech_spinjump,		inv.spr] =		spr_drone_1;
inventory_array[item.mech_spinjump,		inv.have] =		true;

inventory_array[item.mech_hammer,		inv.name] =		"Gravity accelerator";
inventory_array[item.mech_hammer,		inv.spr] =		spr_drone_1;
inventory_array[item.mech_hammer,		inv.have] =		true;



//STARTING GEAR ON
if (starting_gear = true)
{
	inventory_array[item.drone1,			inv.have] =		false;
	inventory_array[item.drone2,			inv.have] =		false;
	inventory_array[item.drone3,			inv.have] =		false;
	inventory_array[item.drone4,			inv.have] =		false;
	inventory_array[item.jetpack,			inv.have] =		false;
	inventory_array[item.wall_jump,			inv.have] =		false;
	inventory_array[item.reflect_bullet,	inv.have] =		false;
	inventory_array[item.mech_dash,			inv.have] =		false;
	inventory_array[item.mech_dash_atk,		inv.have] =		false;
	inventory_array[item.mech_spinjump,		inv.have] =		false;
	inventory_array[item.mech_hammer,		inv.have] =		false;

}

//populating the map with the array
for (var i = 0; i < array_height_2d(inventory_array); i++;)
{ 
	for (var j = 0; j < array_length_2d(inventory_array, i); j++;)
	{
	 global.inventory[# i, j] = inventory_array[ i, j]
	} 
}
