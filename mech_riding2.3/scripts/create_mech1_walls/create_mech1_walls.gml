function create_mech1_walls() {
	//BOTTOM
	bottom_wall =	 instance_create_depth(x,y,depth-10,obj_wall_mech1_enter);

	//LEFT
	left_wall =	 instance_create_depth(bottom_wall.x,bottom_wall.y,depth-10,obj_wall);

	left_wall.image_xscale =  .15;
	left_wall.image_yscale = 1.5;

	//x
	var bbox_l_to_x = bottom_wall.x - bottom_wall.bbox_left
	var L_new_x = bottom_wall.sprite_width - bbox_l_to_x
	left_wall.x = bottom_wall.x - L_new_x - 3

	//y
	left_wall.y = bottom_wall.y - left_wall.sprite_height + 1

	//RIGHT
	right_wall = instance_create_depth(x,y-32+10,depth-10,obj_wall);

	right_wall.image_xscale =  .15;
	right_wall.image_yscale = 1.5;

	//x
	right_wall.x = left_wall.x + bottom_wall.sprite_width - right_wall.sprite_width + 2

	//y
	right_wall.y = left_wall.y


	depth = obj_player.depth - 5;

	//TOP
	top_wall = instance_create_depth(bbox_left,bbox_top-1,0,obj_wall_nme)

	top_wall.image_xscale = 1.6

	//right_wall.image_blend = c_red;
	left_wall.visible = false;
	right_wall.visible = false;
	bottom_wall.visible = false;


}
