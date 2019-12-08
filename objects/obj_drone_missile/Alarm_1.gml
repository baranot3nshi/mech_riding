rotation = point_direction(x,y,x+x_spd,y+y_spd)

if (rotation < 270 && rotation >  90) {image_xscale = 1;} else {image_xscale = -1;}
if (rotation < 360 && rotation > 180){image_yscale = -1;} else {image_yscale = 1;}


var f = 11.25 //fraction
var p = 22.5 //piece

//TT
if		((rotation >=  90-f && rotation <  90+f) 
	   ||(rotation >= 270-f && rotation < 270+f))
{sprite_index = spr_drone_missile_tt rot_str = "TT"}
//LTT
else if ((rotation >=  90+p-f && rotation <  90+p+f) 
	   ||(rotation >=  90-p-f && rotation <  90-p+f)
	   ||(rotation >= 270+p-f && rotation < 270+p+f)
	   ||(rotation >= 270-p-f && rotation < 270-p+f))
{sprite_index = spr_drone_missile_ltt rot_str = "LTT"}

//LT
else if ((rotation >=  45-f && rotation <  45+f) 
	   ||(rotation >= 135-f && rotation < 135+f)
	   ||(rotation >= 225-f && rotation < 225+f)
	   ||(rotation >= 315-f && rotation < 315+f))
{sprite_index = spr_drone_missile_lt rot_str = "LT"}
//LLT
else if ((rotation >= 180+p-f && rotation < 180+p+f) 
	   ||(rotation >= 180-p-f && rotation < 180-p+f)
	   ||(rotation >=   0+p-f && rotation <   0+p+f)
	   ||(rotation >= 360-p-f && rotation < 360-p+f))
{sprite_index = spr_drone_missile_llt rot_str = "LLT"}

//LL
else if ((rotation >=  0 && rotation <  0+f)
	   ||(rotation >= 180-f && rotation < 180+f)
	   ||(rotation >= 360-f && rotation < 360))
{sprite_index = spr_drone_missile_ll rot_str = "LL"}
