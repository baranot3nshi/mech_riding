break_particle_sprite = [spr_rock_particle1, spr_rock_particle2, spr_rock_particle3, spr_rock_particle4];
particle_number = 3;

pickup_droprate = 10;
	
grounded = false;
fall_spd_max = 5;
weight = .3;
collider = obj_wall;
y_spd = 0;

but_down_long = 0;

hardness = hardness_level.hard;

// shake
shake = 0;

spr_x = x;
spr_y = y;
start_x = x;
start_y = y;

hitting_atk = 0;

break_forever = false;
save_key = save_data_key();

//init break forever in alarm1
alarm[1] = 2;