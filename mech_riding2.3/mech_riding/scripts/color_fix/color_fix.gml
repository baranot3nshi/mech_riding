/// color_fix(color)
function color_fix(argument0) {
	return ((argument0 & $FF) << 16) | (argument0 & $FF00) | ((argument0 >> 16) & $FF);


}
