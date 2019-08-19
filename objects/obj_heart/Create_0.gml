alarm[0] = lifespan;
t = lerp(180, 540, alarm[0]/lifespan);

x = xstart + dsin(t) * wiggle_x;
my_state = 0; 

str_w = 0;
str_h = 0;