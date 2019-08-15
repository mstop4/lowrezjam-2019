if (my_state == 0) {
	t = lerp(180, 540, alarm[0]/lifespan);

	y += y_speed;
	x = xstart + dsin(t) * wiggle_x;
}