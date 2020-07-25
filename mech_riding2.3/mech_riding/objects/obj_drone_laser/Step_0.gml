speedX = lengthdir_x(laser_speed, dir);
speedY = lengthdir_y(laser_speed, dir);

#region collision and motion planning
/*

if laser hasn't stopped
	if we hit a wall (replace with your laser collision function, base it on SPEED!)
		stop the laser
	else
		update our position based on our speed
		update our target position based on our coords

*/
laser_timer++;
if (!laser_stop){
	if (place_meeting(x, y, obj_wall) && laser_timer > 1){
		laser_stop = true;

		//INSERT FX HERE
		
	}
	else{
		x += speedX;
		y += speedY;
		targetX = x;
		targetY = y;
	}
}

#endregion

#region laser catchup

/*

if laser is catching up
	stop the end of the laser, it ran out of juice!
	we aren't updating the coords directly anymore, but the start coords need to be updated instead
	
*/

if (laser_fade){
	laser_stop = true;
	startX += speedX;
	startY += speedY;
}

#endregion

#region primitive construction

/*

get the geometry we need to build our primitive
if we're stretching our sprite over time and the scalar is ready to be updated
	update the scalar amd slowly release tension of the V texcoord
	until we hit 0
*/

beamDir = point_direction(startX, startY, targetX, targetY);
beamDist = point_distance(startX, startY, targetX, targetY);
beamScale = beamDist / beamH;

if (laser_scalarUpdate && stretchOverTime){
	scalar = scalar - (beamH / (beamDist / laser_speed));
	scalar = clamp(scalar, 0, scalarStart);
}

#region define verts

vertX_0 = startX + lengthdir_x(beamW / 2, beamDir + 90);
vertY_0 = startY + lengthdir_y(beamH / 2, beamDir + 90);

vertX_1 = startX + lengthdir_x(beamW / 2, beamDir - 90);
vertY_1 = startY + lengthdir_y(beamH / 2, beamDir - 90);

vertX_2 = targetX + lengthdir_x(beamW / 2, beamDir + 90);
vertY_2 = targetY + lengthdir_y(beamH / 2, beamDir + 90);

vertX_3 = targetX + lengthdir_x(beamW / 2, beamDir - 90);
vertY_3 = targetY + lengthdir_y(beamH / 2, beamDir - 90);

#endregion

#region make surface and primitive

if (!surface_exists(laserSurf)){
	laserSurf = surface_create(room_width, room_height);
}

surface_set_target(laserSurf);
draw_clear_alpha(c_black, 0);

gpu_set_texrepeat(true);
draw_primitive_begin_texture(pr_trianglestrip, texBeam);

draw_vertex_texture(vertX_0, vertY_0, 0, 0 + scalar);
draw_vertex_texture(vertX_1, vertY_1, 1, 0 + scalar);
draw_vertex_texture(vertX_2, vertY_2, 0, 1);
draw_vertex_texture(vertX_3, vertY_3, 1, 1);

draw_primitive_end();
surface_reset_target();

#endregion

#endregion

#region collision check

/*

populate our list with enemy targets
loop through our enemy target list
	set our current enemy instance to list position @ _i
	damage enemy

*/

hitCount = collision_line_list(startX, startY, x, y, obj_nme_parent, false, true, listHit, false);
for (var _i = 0; _i < hitCount; _i++){
	var _inst = listHit[| _i];

	//hurt enemy
	with (_inst){nme_hurt();} 
	
	//INSERT FX HERE
}
ds_list_clear(listHit);

#endregion

#region death check

/*

if laser is catching up to the front
	if the distance is really short
		we're ready to kill the laser

*/

if (laser_fade){
	if (beamDist < 1){
		laser_dead = true;
	}
}

if (laser_dead){
	instance_destroy();
}

#endregion