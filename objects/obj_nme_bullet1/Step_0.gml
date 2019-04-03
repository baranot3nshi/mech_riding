x += spd;

if place_meeting_array(x+spd,y,collider)
{
	instance_destroy();
	var destroy = instance_create_depth(x,y,depth,obj_nme_bullet1_destroy);
	destroy.image_xscale = image_xscale
	
}