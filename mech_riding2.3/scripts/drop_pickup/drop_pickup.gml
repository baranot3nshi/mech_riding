function drop_pickup(argument0) {
	//NEEDS in Create Event:
	//break_particle_sprite = [spr_rock_particle1, spr_rock_particle2, spr_rock_particle3, spr_rock_particle4];
	//particle_number = 3;

	//pickup_droprate = 20;


				// set random position inside the sprite
				var random_x = random_range(other.bbox_left, other.bbox_right);
				var random_y = random_range(other.bbox_top, other.bbox_bottom - sprite_height/2);
					
				// random chance
				var _random = random(100)
			
				// if it's above the chance, create a normal particle
				if (_random <= argument0)
				{
					var piece = instance_create_depth(random_x, random_y, depth-5, obj_pickup_HP)			
					
					//define stuff about the particle
					piece.origin_x = x; piece.origin_y = y;
					piece.image_xscale = choose(-1,1)
				}


}
