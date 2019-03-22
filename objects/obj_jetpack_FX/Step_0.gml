x = obj_player.x + obj_player.jetpack_FX_offset;
y = obj_player.y - 3;

if (obj_player.state != states.jetpack)
{instance_destroy();}