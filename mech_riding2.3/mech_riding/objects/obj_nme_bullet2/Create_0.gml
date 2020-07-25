state = 0; //prevent crash from plyaer checking for nme invulnerability to be hurt

spd = 1.2;

collider = [obj_player_parent, obj_wall];

dir = 1;
outside_timer = 0;
outside_timer_max = 50;

reflected_bullet = 0;
when_reflected = obj_bullet2_reflected;

dmg = 1;

bullet_angle = 0;

x_spd = 0;
y_spd = 0;