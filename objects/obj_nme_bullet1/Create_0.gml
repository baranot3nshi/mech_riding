state = 0; //prevent crash from plyaer checking for nme invulnerability to be hurt

spd = 1;

collider = [obj_player_parent, obj_wall];

dir = 1;
outside_timer = 0;
outside_timer_max = 50;

reflected_bullet = 0;
when_reflected = obj_bullet1_reflected;

dmg = 1;