/// @param player
/// @param input_slot
function input_check_analogue(argument0, argument1) {
	//  Checks the analogue value of an input

	return obj_input.input_state[ argument0*E_INPUT_SLOT.__SIZE + argument1, E_INPUT_STATE.ANALOGUE ];


}
