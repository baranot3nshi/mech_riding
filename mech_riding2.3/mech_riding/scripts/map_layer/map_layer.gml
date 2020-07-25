///@arg map_id
///@arg instance
///@arg layer_name
function map_layer(argument0, argument1, argument2) {

	var map_id = argument0
	var inst = argument1
	var name = argument2
	var tmH = tilemap_get_height(map_id)
	var tmW = tilemap_get_width(map_id)


	if (!layer_exists(name))
	{
		layer_create(0,name)
	}

	//cycle through height
	for (y_i = 0; y_i < tmH; y_i++)
	{
		//cycle through width
		for (x_i = 0; x_i < tmW; x_i++)
		{
		
			//check tile
			var check_tile = tilemap_get(map_id,x_i,y_i)
			if (check_tile != 0 && instance_position(tw*x_i,tw*y_i, inst) = noone) 
			{
				var width = 0;
				var height = 0;
						
				var width_count = 0;
				var height_count = 0;
			
			
				//count longest possible width and lenght
				while(tilemap_get(map_id,x_i+width_count,y_i) > 0) {width_count++;}
				while(tilemap_get(map_id,x_i,y_i+height_count) > 0)	{height_count++;}
			
				//if the wall chunk ss wider than it is higher
				if (width_count > height_count)
				{
					//maximum width!!
					width = width_count;
				
					//at least one tile tall
					height = 1;
				
					//if there's another wall tile under this one, check the whole row
					var hc = 0; //height count
					while(tilemap_get(map_id, x_i, y_i+hc) > 0)
					{
						//increase c (count) for every missing walls
						var c = 0;
						for (var wc = 0; wc < width_count; wc++;)
						{
							// if there's even one missing wall stop
							if c > 0 continue;
						
							if (tilemap_get(map_id,x_i+wc,y_i+height) <= 0) {c ++;}
						}
						//if there are no missing walls, add the line
						if c = 0 height++;
						//look at the next line
						hc++
					}
				}
			
				//same but if the wall chunk is higher than it is wider
				else
				{
					height = height_count;
				
					width = 1;
					var wc = 0;
					while(tilemap_get(map_id, x_i+wc, y_i) > 0)
					{
						var c = 0;
						for (var hc = 0; hc < height_count; hc++;)
						{
							if (tilemap_get(map_id,x_i+width,y_i+hc) <= 0) {c ++;}
						}
						if c = 0 width++;
						wc++
					}
				}			
			
				//create wall, update width
				var wall = instance_create_layer(tw*x_i,tw*y_i,name,inst);
					wall.image_xscale = width ; 
					wall.image_yscale = height;
					//wall.image_blend = irandom(99999999999);
				
			}
		
		}
	
	}


}
