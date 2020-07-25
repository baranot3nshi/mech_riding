/// @param player
/// @param index
/// @param pressed_index
/// @param analog_value
/// @param device_kind
function __input_handle_general(argument0, argument1, argument2, argument3, argument4) {

	var _offset = argument1 + argument0*E_INPUT_SLOT.__SIZE;

	input_state[ _offset, E_INPUT_STATE.NEW_ON            ] = true;
	input_state[ _offset, E_INPUT_STATE.NEW_PRESSED_INDEX ] = argument2;
	input_state[ _offset, E_INPUT_STATE.ANALOGUE          ] = argument3;
	input_state[ _offset, E_INPUT_STATE.DEVICE_KIND       ] = argument4;


}
