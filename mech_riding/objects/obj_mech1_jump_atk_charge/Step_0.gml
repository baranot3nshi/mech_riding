event_inherited();
x = obj_player.x;
y = obj_player.y;

if (obj_player.state != states.jump_atk_charge)
{
	instance_destroy();
}