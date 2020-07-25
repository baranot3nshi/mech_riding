///@arg sprite
///@arg X
///@arg Y
///@arg lerp
function create_hair_strand(argument0, argument1, argument2, argument3) {

	var hair = instance_create_depth(argument1,argument2,obj_player.depth+5,obj_player_hair)
	hair.sprite_index = argument0
	hair.X = argument1
	hair.Y = argument2
	hair.hair_lerp = argument3


}
