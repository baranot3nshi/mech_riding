if (x >= obj_player.x)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}

origin = obj_player;

//TOWARDS CENTER
//x_dist = origin.x;
//y_dist = origin.y - 8;

//UP
dist = 15;
x_dist = x;
y_dist = y - dist;

spd = .2;