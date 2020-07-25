function charge_overtime() {
		if (but_CHARGE_charge && global.dt != 0) 
		{
			charging = true;
			//image_blend = c_blue; //debug
		
			charge_timer += global.dt
			if (charge_timer %3 = 0)
			{
			//drawing the particle
			if (image_xscale = 1) {var r1 = -10, var r2 = +14} else {r1 = -14; r2 =+10}
			var part =instance_create_depth( random_range(x+r1,x+r2)
											,random_range(y,y-24)
											,depth-5,obj_charge_particle)
			part.spd = .035;
			part.origin = id;
			}
		
		} 
		else 
		{
			charge_timer = 0;
			charging = false; 
			//image_blend = c_white; //debug
		}


}
