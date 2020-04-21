pickup_item = item.drone1;

sprite_index = global.inventory[# pickup_item, inv.spr];

//generating message
item_name = global.inventory[# pickup_item, inv.name]
textstring = string( "You found " + item_name + "!!")