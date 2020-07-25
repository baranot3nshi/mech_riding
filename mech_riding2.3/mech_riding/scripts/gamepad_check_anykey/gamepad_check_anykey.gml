function gamepad_check_anykey() {
	//gamepad_check_anykey

	for ( var i = gp_face1; i < gp_axisrv; i++ ) {
	    if ( gamepad_button_check( 0, i ) ) 
		{
			return i;
		}
	}
	return false;




}
