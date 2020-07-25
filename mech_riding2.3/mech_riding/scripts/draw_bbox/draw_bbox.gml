function draw_bbox() {
	draw_set_alpha(.5)
	draw_set_color_light(c_red)

	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false)

	draw_set_alpha(1)
	draw_set_color_light(c_white)


}
