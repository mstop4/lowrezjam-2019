alarm[0] = lifespan;
t = lerp(0, 180, clamp((lifespan-alarm[0])/(lifespan/4), 0, 1));

y = ystart + dsin(t) * -jump_y;