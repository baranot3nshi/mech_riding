state = 0; //prevent crash from player checking for nme invulnerability to be hurt

dir = 1;

collider = [obj_player_parent, obj_wall];

spd = 2.5;

outside_timer = 0;
outside_timer_max = 50;

reflected_bullet = 0;
when_reflected = obj_bullet1_reflected;

dmg = 1;

x_spd = 0;
y_spd = 0;