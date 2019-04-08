global.HP = clamp(global.HP,0,global.HP_max)
global.AP = clamp(global.AP,0,global.AP_max)

if (global.charging) {global.AP++}