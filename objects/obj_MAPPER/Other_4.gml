//HOW TO USE:
//initialize the layers that you want to procgen here event like so:

var wall = 0;
var plat = 0;
var wall_id = 0;
var plat_id = 0;

var wall_id = layer_get_id("TILES_wall");
var plat_id = layer_get_id("TILES_platform");

wall = layer_tilemap_get_id(wall_id);
plat = layer_tilemap_get_id(plat_id);

//add all of the tiles for one type of instance in one layer!!
//then add the map_layer function, specifying the layer and the type of instance.

//if (layer_exists(wall))
{map_layer(wall, obj_wall_slide, "INST_wall");} 
//else {show_debug_message("TILES_wall not found")}

//if (layer_exists(plat))
{map_layer(plat, obj_platform, "INST_plat");}
//{show_debug_message("TILES_platform not found")}

//enemywalls
var nme_wall_L = instance_create_depth(-tw,-tw,0,obj_wall_nme)
var nme_wall_T = instance_create_depth(-tw,-tw,0,obj_wall_nme)
var nme_wall_R = instance_create_depth(room_width,-tw,0,obj_wall_nme)
var nme_wall_B = instance_create_depth(-tw,room_height,0,obj_wall_nme)

nme_wall_L.image_yscale = room_height/tw
nme_wall_B.image_xscale = room_width/tw
nme_wall_R.image_yscale = room_height/tw
nme_wall_T.image_xscale = room_width/tw
