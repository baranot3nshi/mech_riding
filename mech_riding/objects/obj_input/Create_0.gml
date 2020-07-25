global.key_bindings = ["P","M","W","A","D","S","E","Q"];
global.analog_sensitivity = 0.3
global.analog_d_sensitivity = 0.6

enum E_INPUT_SLOT
{
	PAD_UP,
	PAD_DOWN,
	PAD_LEFT,
	PAD_RIGHT,
    UP,
    DOWN,
    LEFT,
    RIGHT,
    TRIANGLE,
	SQUARE,
	CIRCLE,
	CROSS,
	START,
	SELECT,
	R,
	L, //Add your own enum element to add another input slot!
    __SIZE
}

//Millisecond delay times for extended behaviours
repeat_delay    = 280;
longpress_delay = 200;
doubletap_delay = 250;

//No device has been found yet. This variable is handled in "Async - System"
gamepad_device = -1;

//Set the maximum number of players
input_set_max_players( 2 );

//Initialise the input system
input_clear();