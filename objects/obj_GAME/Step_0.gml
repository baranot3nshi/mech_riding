global.HP = clamp(global.HP,0,global.HP_max)
global.AP = clamp(global.AP,0,global.AP_max)

if (global.charging) {global.AP++}

global.dt = (delta_time/1000000) * (target_framerate + bullet_time)