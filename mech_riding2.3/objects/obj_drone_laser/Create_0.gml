alarm[1] = 100; // forced deletion in case of bug

event_inherited();

spd = 25;

dmg = 1;

dir = 0;
step = 0;

pushback = 0;

speedX = 0;
speedY = 0;

laser_stop = false; // is the end of the laser stopped?
laser_fade = false; // is the start of the laser moving?
laser_dead = false; // is the object ready to be destroyed?

laser_lifespan = 15; // how many steps the laser will be alive for!

laser_speed = spd; // the X/Y length at which the laser will move @ a given angle 
#region example for above

/*

if (mouse_check_button_pressed(mb_left)){
	var _laser = instance_create_layer(startX, startY, LAYERlaser, oLaser);
	var _laserDir = point_direction(startX, startY, mouse_x, mouse_y);
	_laser.speedX = lengthdir_x(_laser.laser_speed, _laserDir);
	_laser.speedY = lengthdir_y(_laser.laser_speed, _laserDir);
}

*/

#endregion

startX = real_round(x);
startY = real_round(y);

laser_timer = 0;

targetX = x;
targetY = y;

beamDir = 0;
beamDist = 0;
beamScale = 1;

beamSpr = spr_drone_laser;

beamW = sprite_get_width(beamSpr);
beamH = sprite_get_height(beamSpr);
texBeam = sprite_get_texture(beamSpr, 0);

#region vertex init

vertX_0 = 0;
vertY_0 = 0;
vertX_1 = 0;
vertY_1 = 0;
vertX_2 = 0;
vertY_2 = 0;
vertX_3 = 0;
vertY_3 = 0;

#endregion

laserSurf = surface_create(room_width, room_height);

alarm[0] = laser_lifespan; // we need to start the alarm here if we want the laser to stop "firing"

listHit = ds_list_create(); // used to keep track of what enemies the laser is hitting

#region scalar

stretchOverTime = true; // set to false if you do not want to stretch the sprite over the lifespan of the laser
laser_scalarUpdate = false; // used for updating the scalar
if (stretchOverTime){
	scalarStart = 1 - (1 / beamH);
}
else{
	scalarStart = 0;
}

scalar = scalarStart;

#endregion