dead_timer++;
if (dead_timer = dead_timer_max)
{
	instance_destroy();
}

if (dead_timer % 2 = 0 )
{if (visible = true) {visible = false} else {visible = true}}