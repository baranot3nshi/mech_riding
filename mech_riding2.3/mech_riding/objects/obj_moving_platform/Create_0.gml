spd = .6; //NEVER CHANGE THE SPEED
depth = -5000

x_spd = 0;
y_spd = 0;

start_x = x;
start_y = y;

dx = 5;
dy = 0; //KEEP AT ZERO, NO VERTICAL MOVEMENT

dest_x = x + dx*tw;
dest_y = y + dy*tw;

x_dir = 0;
y_dir = 0;

alarm[0] = 10;
alarm[1] = 0; //delay

//add to creation code
//dx = 5; //distance
//alarm[1] = 0; //delay