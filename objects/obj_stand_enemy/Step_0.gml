var _left_tile, _right_tile;

_left_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left, y + bb_bottom + 1);
_right_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right, y + bb_bottom + 1);

if (_left_tile == 0 && _right_tile == 0) {
	if (my_actor_state != actor_state.booped) 
		my_actor_state = actor_state.falling;
	y++;
}

else {
	if (my_actor_state != actor_state.preparing &&
		my_actor_state != actor_state.booped &&
		my_actor_state != actor_state.stunned && 
		my_actor_state != actor_state.booping) {
		my_actor_state = actor_state.idle;
	}
}