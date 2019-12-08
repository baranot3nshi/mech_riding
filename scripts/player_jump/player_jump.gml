if (but_JUMP_pressed && jump_number > 0
&& !but_down
)
{
	state = states.jump;
	jump_step = 0;
}