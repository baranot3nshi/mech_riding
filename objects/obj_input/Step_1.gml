input_refresh_begin();

//Note that we can stack many different inputs for the same input slot
//This system supports gamepad axis, gamepad button, keyboard button, and mouse button input

var sens = global.analog_sensitivity
var sens_d = global.analog_d_sensitivity

//CROSS PAD
input_handle_gamepad_button( 0, E_INPUT_SLOT.PAD_UP   , gamepad_device, gp_padu );

input_handle_gamepad_button( 0, E_INPUT_SLOT.PAD_DOWN   , gamepad_device, gp_padd );

input_handle_gamepad_button( 0, E_INPUT_SLOT.PAD_LEFT   , gamepad_device, gp_padl );
input_handle_keyboard(       0, E_INPUT_SLOT.PAD_LEFT   , ord("1") );

input_handle_gamepad_button( 0, E_INPUT_SLOT.PAD_RIGHT   , gamepad_device, gp_padr );
input_handle_keyboard(       0, E_INPUT_SLOT.PAD_RIGHT   , ord("2") );

//ANALOG
input_handle_gamepad_axis(   0, E_INPUT_SLOT.UP   , gamepad_device, gp_axislv, -sens );
input_handle_keyboard(       0, E_INPUT_SLOT.UP   , vk_up );

input_handle_gamepad_axis(   0, E_INPUT_SLOT.DOWN , gamepad_device, gp_axislv,  sens_d);
input_handle_keyboard(       0, E_INPUT_SLOT.DOWN , vk_down);

input_handle_gamepad_axis(   0, E_INPUT_SLOT.LEFT , gamepad_device, gp_axislh, -sens );
input_handle_keyboard(       0, E_INPUT_SLOT.LEFT , vk_left);

input_handle_gamepad_axis(   0, E_INPUT_SLOT.RIGHT, gamepad_device, gp_axislh,  sens );
input_handle_keyboard(       0, E_INPUT_SLOT.RIGHT, vk_right);

//ACTION BUTTONS
input_handle_gamepad_button( 0, E_INPUT_SLOT.TRIANGLE , gamepad_device, gp_face4 );
input_handle_keyboard(       0, E_INPUT_SLOT.TRIANGLE , ord(global.key_bindings[2]), );

input_handle_gamepad_button( 0, E_INPUT_SLOT.SQUARE , gamepad_device, gp_face3 );
input_handle_keyboard(       0, E_INPUT_SLOT.SQUARE , ord(global.key_bindings[3]), );

input_handle_gamepad_button( 0, E_INPUT_SLOT.CIRCLE , gamepad_device, gp_face2 );
input_handle_keyboard(       0, E_INPUT_SLOT.CIRCLE , ord(global.key_bindings[4]), );

input_handle_gamepad_button( 0, E_INPUT_SLOT.CROSS , gamepad_device, gp_face1 );
input_handle_keyboard(       0, E_INPUT_SLOT.CROSS , ord(global.key_bindings[5]), );

//CENTER
input_handle_gamepad_button( 0, E_INPUT_SLOT.START , gamepad_device, gp_start );
input_handle_keyboard(       0, E_INPUT_SLOT.START , ord(global.key_bindings[0]), );

input_handle_gamepad_button( 0, E_INPUT_SLOT.SELECT , gamepad_device, gp_select );
input_handle_keyboard(       0, E_INPUT_SLOT.SELECT , ord(global.key_bindings[1]), );

//SHOULDER
input_handle_gamepad_button( 0, E_INPUT_SLOT.R , gamepad_device, gp_shoulderr );
input_handle_gamepad_button( 0, E_INPUT_SLOT.R , gamepad_device, gp_shoulderrb );
input_handle_keyboard(       0, E_INPUT_SLOT.R , ord(global.key_bindings[6]), );

input_handle_gamepad_button( 0, E_INPUT_SLOT.L , gamepad_device, gp_shoulderl);
input_handle_gamepad_button( 0, E_INPUT_SLOT.L , gamepad_device, gp_shoulderlb);
input_handle_keyboard(       0, E_INPUT_SLOT.L , ord(global.key_bindings[7]), );

input_refresh_end( repeat_delay, longpress_delay, doubletap_delay ); //Actual state processing happens in this script