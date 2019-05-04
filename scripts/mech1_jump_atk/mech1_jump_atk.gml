/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59A60200
/// @DnDArgument : "code" "if (but_ATK_pressed) $(13_10){$(13_10)	state = states.jump_atk;	$(13_10)	jump_atk_step = 0;$(13_10)}"
if (but_ATK_pressed) 
{
	state = states.jump_atk;	
	jump_atk_step = 0;
}