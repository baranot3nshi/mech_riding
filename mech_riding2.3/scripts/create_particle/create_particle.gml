///@arg number_of_particles
///@arg sprites_array
function create_particle(argument0, argument1) {


	repeat(argument0)
	{
		// set random position inside the sprite
		var random_x = random_range(other.bbox_left, other.bbox_right);
		var random_y = random_range(other.bbox_top, other.bbox_bottom);
	
		// create particle
		var piece = instance_create_depth(random_x, random_y, depth-5, obj_explosion_particle)
		piece.sprite_index = choose_from_array(argument1);
		piece.lifespan = 180;
	
		//define stuff about the particle
		piece.origin_x = x; piece.origin_y = y;
		piece.image_xscale = choose(-1,1)
	}


}
