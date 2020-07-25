/// @param player
/// @param input_slot
function input_check(argument0, argument1) {
	//  Checks if an input slot is currently ON, i.e. an input button is held down

	return obj_input.input_state[ argument0*E_INPUT_SLOT.__SIZE + argument1, E_INPUT_STATE.ON ];


}
