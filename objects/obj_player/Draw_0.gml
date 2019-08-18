var _drawit = true;

if (is_invincible) {
	_drawit = invincible_t div 4 mod 2;
}

if (_drawit) {
	sprite_index = my_sprite[my_sprite_state, my_facing];
	draw_sprite(sprite_index, image_index, floor(x), floor(y));
}