//ANIMATION
instance_create_depth(x,y,depth-5,shoot_animation)

//BULLET
bullet = instance_create_depth(x,y,depth-10,shoot_bullet_type)


target = find_closest_nme(180,180)

if (!target)
{bullet.dir = point_direction(x,y,x+obj_player.dir,y)}
else
{bullet.dir = point_direction(x,y,target.x,target.y-target.sprite_height/2)}



//BACK TO FOLLOW
state = drone_states.follow;