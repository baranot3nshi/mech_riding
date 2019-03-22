///@arg sprite
///@arg X
///@arg Y
///@arg lerp

var hair = instance_create_depth(argument1,argument2,x-5,obj_player_hair)
hair.sprite_index = argument0
hair.X = argument1
hair.Y = argument2
hair.hair_lerp = argument3