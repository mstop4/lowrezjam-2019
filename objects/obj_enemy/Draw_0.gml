var _drawit = true;

if (my_actor_state == actor_state.stunned) {
	_drawit = min(stun_time / 4, alarm[0]) div 8 mod 2;
}


if (_drawit) {
	sprite_index = my_sprite[my_sprite_state, my_facing];
	var _fx = floor(x);
	var _fy = floor(y);
	draw_sprite(sprite_index, image_index, _fx, _fy);
}