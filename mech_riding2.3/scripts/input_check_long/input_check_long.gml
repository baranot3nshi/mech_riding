/// @param player
/// @param input_slot
function input_check_long(argument0, argument1) {
	//  Checks if an input slot has been held down for a long period of time

	return obj_input.input_state[ argument0*E_INPUT_SLOT.__SIZE + argument1, E_INPUT_STATE.LONG ];


}
