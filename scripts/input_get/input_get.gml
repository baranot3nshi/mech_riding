//button settings
global.but_JUMP = E_INPUT_SLOT.CROSS;
global.but_ATK = E_INPUT_SLOT.SQUARE;
global.but_DISMOUNT = E_INPUT_SLOT.TRIANGLE;
global.but_CHARGE = E_INPUT_SLOT.R;
global.but_AIM = E_INPUT_SLOT.L;
global.but_SHOOT = E_INPUT_SLOT.CIRCLE;

if (keyboard_check(vk_anykey)) {global.current_input = "keyboard"}
else if (gamepad_check_anykey()) {global.current_input = "gamepad"}

but_pad_left =			input_check_pressed		(0,E_INPUT_SLOT.PAD_LEFT)
but_pad_right =			input_check_pressed		(0,E_INPUT_SLOT.PAD_RIGHT)

but_left =				input_check_analogue	(0, E_INPUT_SLOT.LEFT) * global.dt
but_right =				input_check_analogue	(0, E_INPUT_SLOT.RIGHT) * global.dt
but_down =				input_check_analogue	(0, E_INPUT_SLOT.DOWN) * global.dt
but_down_long =			input_check_long		(0, E_INPUT_SLOT.DOWN) * global.dt && !but_left && !but_right
but_up =				input_check_analogue	(0, E_INPUT_SLOT.UP) * global.dt

but_left_pressed =		 input_check_pressed	(0, E_INPUT_SLOT.LEFT)
but_right_pressed =		 input_check_pressed	(0, E_INPUT_SLOT.RIGHT)
but_down_pressed =		 input_check_pressed	(0, E_INPUT_SLOT.DOWN)
but_up_pressed =		 input_check_pressed	(0, E_INPUT_SLOT.UP)

but_JUMP_charge =		input_check				(0, global.but_JUMP)
but_JUMP_pressed =		input_check_pressed		(0, global.but_JUMP)
but_JUMP_released =		input_check_released	(0, global.but_JUMP)

but_SHOOT_charge =		input_check				(0, global.but_SHOOT)
but_SHOOT_pressed =		input_check_pressed		(0, global.but_SHOOT)
but_SHOOT_released =	input_check_released	(0, global.but_SHOOT)

but_ATK_charge =		input_check				(0, global.but_ATK)
but_ATK_pressed =		input_check_pressed		(0, global.but_ATK)
but_ATK_released =		input_check_released	(0, global.but_ATK)

but_DISMOUNT_charge =	input_check				(0, global.but_DISMOUNT)
but_DISMOUNT_pressed =	input_check_pressed		(0, global.but_DISMOUNT)
but_DISMOUNT_released =	input_check_released	(0, global.but_DISMOUNT)

but_CHARGE_charge =		input_check				(0, global.but_CHARGE)
but_CHARGE_pressed =	input_check_pressed		(0, global.but_CHARGE)
but_CHARGE_released =	input_check_released	(0, global.but_CHARGE)

but_AIM_charge =		input_check				(0, global.but_AIM)
but_AIM_pressed =		input_check_pressed		(0, global.but_AIM)
but_AIM_released =		input_check_released	(0, global.but_AIM)

but_select =			input_check_pressed		(0, E_INPUT_SLOT.SELECT)
but_start =				input_check_pressed		(0, E_INPUT_SLOT.START)

but_CONFIRM =			input_check_pressed		(0, E_INPUT_SLOT.CIRCLE)
but_CANCEL =			input_check_pressed		(0, E_INPUT_SLOT.CROSS)