/// color_fix(color)
return ((argument0 & $FF) << 16) | (argument0 & $FF00) | ((argument0 >> 16) & $FF);