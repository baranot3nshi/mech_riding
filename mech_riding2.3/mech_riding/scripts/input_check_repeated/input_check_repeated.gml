/// @param player
/// @param input_slot
function input_check_repeated(argument0, argument1) {
	//  Checks if an input slot is firing a REPEAT state for long presses

	return obj_input.input_state[ argument0*E_INPUT_SLOT.__SIZE + argument1, E_INPUT_STATE.REPEATED ];


}
