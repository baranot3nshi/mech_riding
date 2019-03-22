if (x >= obj_player.x)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}

origin = obj_player;

x_dist = origin.x;
y_dist = origin.y - 8;
spd = .2;