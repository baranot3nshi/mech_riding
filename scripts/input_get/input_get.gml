//button settings
but_JUMP = E_INPUT_SLOT.CROSS;
but_ATK = E_INPUT_SLOT.SQUARE;
but_DISMOUNT = E_INPUT_SLOT.TRIANGLE;
but_CHARGE = E_INPUT_SLOT.R;


but_left =				input_check_analogue	(0, E_INPUT_SLOT.LEFT)
but_right =				input_check_analogue	(0, E_INPUT_SLOT.RIGHT)
but_down =				input_check_analogue	(0, E_INPUT_SLOT.DOWN)

but_JUMP_charge =		input_check				(0, but_JUMP)
but_JUMP_pressed =		input_check_pressed		(0, but_JUMP)
but_JUMP_released =		input_check_released	(0, but_JUMP)

but_CIRCLE_charge =		input_check				(0, E_INPUT_SLOT.CIRCLE)
but_CIRCLE_pressed =	input_check_pressed		(0, E_INPUT_SLOT.CIRCLE)
but_CIRCLE_released =	input_check_released	(0, E_INPUT_SLOT.CIRCLE)

but_ATK_charge =		input_check				(0, but_ATK)
but_ATK_pressed =		input_check_pressed		(0, but_ATK)
but_ATK_released =		input_check_released	(0, but_ATK)

but_DISMOUNT_charge =	input_check				(0, but_DISMOUNT)
but_DISMOUNT_pressed =	input_check_pressed		(0, but_DISMOUNT)
but_DISMOUNT_released =	input_check_released	(0, but_DISMOUNT)

but_CHARGE_charge =		input_check					(0, but_CHARGE)
but_CHARGE_pressed =		input_check_pressed		(0, but_CHARGE)
but_CHARGE_released =	input_check_released		(0, but_CHARGE)