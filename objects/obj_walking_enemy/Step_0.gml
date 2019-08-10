var _top_tile, _bottom_tile, _left_tile, _right_tile;

_left_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left, y + bb_bottom + 1);
_right_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right, y + bb_bottom + 1);

if (my_actor_state == actor_state.moving) {
	if (my_facing == facing.right) {
		_top_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right + move_speed, y + bb_top);
		_bottom_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right + move_speed, y + bb_bottom);
	
		if (_top_tile != 0 || _bottom_tile != 0 || _right_tile == 0) {
			my_facing = facing.left;
		}
		
		else {
			x += move_speed;
		}
	}

	else if (my_facing == facing.left) {
		_top_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left - move_speed, y + bb_top);
		_bottom_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left - move_speed, y + bb_bottom);
	
		if (_top_tile != 0 || _bottom_tile != 0 || _left_tile == 0) {
			my_facing = facing.right;
		}
		
		else {
			x -= move_speed;
		}
	}
}

if (_left_tile == 0 && _right_tile == 0) {
	if (my_actor_state != actor_state.booped) 
		my_actor_state = actor_state.falling;
	y++;
}

else {
	if (my_actor_state != actor_state.booped && my_actor_state != actor_state.stunned) 
		my_actor_state = actor_state.moving;
}
