/// @param player
/// @param input_slot
function input_check_double(argument0, argument1) {
	//  Checks if an input slot has been double-tapped

	return obj_input.input_state[ argument0*E_INPUT_SLOT.__SIZE + argument1, E_INPUT_STATE.DOUBLE_ON ];


}
