apply_gravity();


// shaking

if (shake > 0)
{
	spr_x = start_x + random_range(1, -1);
	spr_y = start_y + random_range(1, -1);
	
	shake = lerp(shake,0,.8)
}

else

{
	spr_x = x;
	spr_y = y;
	start_x = x;
	start_y = y;
}