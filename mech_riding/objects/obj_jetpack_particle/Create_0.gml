if (x <= obj_player.x)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}

x_dist = obj_player.x;
y_dist = y + 5;
spd = random_range(.05,.1);