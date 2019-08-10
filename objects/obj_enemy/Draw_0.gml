sprite_index = my_sprite[my_sprite_state, my_facing];
var _fx = floor(x);
var _fy = floor(y);
draw_sprite(sprite_index, image_index, _fx, _fy);

/* if (my_sprite_state == actor_state.booped)
	draw_sprite(spr_uwu, 1, _fx, _fy - 8); */