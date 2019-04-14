
if (obj_player.dir = 1)
{
	x = obj_player.x - 5
} else
{
	x = obj_player.x + 4
}


y = obj_player.y-2;

if (obj_player.state != states.jetpack)
{instance_destroy();}