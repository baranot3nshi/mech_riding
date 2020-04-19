//block until the object is destroyed
global.screenfreeze = 1;

//fade in and destruction
if (global.fade_FX_alpha > 0) {global.fade_FX_alpha -= 0.02}
if (global.fade_FX_alpha <= 0) {instance_destroy();}