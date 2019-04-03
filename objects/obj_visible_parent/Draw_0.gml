//if alarm[11] is running, draw the sprite all white
if (alarm[11] > -1)
{
gpu_set_fog(true,c_white,0,1)
draw_self_pgrid();
gpu_set_fog(false,c_white,0,1)
}
//otherwise, draw the sprite normally
else
{
draw_self_pgrid();
}

