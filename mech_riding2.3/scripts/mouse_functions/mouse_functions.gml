function mouse_check_area(x1,y1,x2,y2){
	if ((device_mouse_x(0) > x1 && device_mouse_x(0) < x2) &&
		(device_mouse_y(0) > y1 && device_mouse_y(0) < y2))
		{
			return true;
		}

}