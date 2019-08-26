#region enum
enum drone_states {
	idle,
	follow,
	shoot,
	shoot_charge,
	
	size
	
}

enum drone_type {
	standard,
	laser,
	missile,
	tv,
	
	size
}
#endregion
#region create list of drones you have

var j = 0;
for (var i = 0; i < item.drone_size; i++)
{
	if (global.inventory[# i, inv.have] = true)
	{
		owned_drones[j] = i;
		j++;
		//show_debug_message("added drone " + string(i))
	}
}

owned_drones_number = array_length_1d(owned_drones);
//show_debug_message("number of drones: " + string(owned_drones_number))
#endregion

type_pos = 0;

if (global.drone_type = undefined)
{
	type = owned_drones[0];
	global.drone_type = type;
}
else
{
	type = global.drone_type;
}

state = drone_states.follow;

follow_x = obj_player.x - 8;
follow_y = obj_player.y ;


x_spd = 0;
y_spd = 0;
spd = .2
dir = 1

instance_create_depth(x,y,depth+5,obj_drone_hover_FX)

shoot_snd = snd_shoot;
shoot_animation = obj_drone_shoot1_FX;
shoot_bullet_type = obj_drone_bullet1;
shoot_cooldown = 20;

sprite_idle = spr_drone_1;
sprite_open = spr_drone_1;

shoot_charge_snd = snd_shoot_charge;
shoot_charge_animation = obj_drone_shoot1_FX;
shoot_charge_bullet_type = obj_drone_bullet2;
shoot_charge_AP =  global.AP_chunk/3;
shoot_cooldown = 40;

shoot_timer = 0;

//aiming system
target = 0;
_pStart = [0,0]
_pTop =	 [0,0]
_pBottom = [0,0]

lock_on_FX = spr_lock_on_part;

reticule_dist = 50;

range_w = 170;
range_h = 170;

change_FX = 0;

instant = false;