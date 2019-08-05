#region Movement
var _h_input = keyboard_check(key_right) - keyboard_check(key_left);

if (keyboard_check_pressed(key_boop) && my_state != actor_state.booping) {
	my_state = actor_state.booping;
	image_index = 0;
	if (my_facing == facing.right) {
		instance_create_layer(x+4, y-4, layer, obj_heart);
	}
	else {
		var _h = instance_create_layer(x-4, y-4, layer, obj_heart);
		_h.wiggle_x *= -1;
	}
}

if (_h_input != 0) {
	var _top_tile, _bottom_tile;
	
	if (my_state != actor_state.booping) {
		my_state = actor_state.moving;
	}
	
	if (_h_input == 1) {
		my_facing = facing.right;
		_top_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right + move_speed, y + bb_top);
		_bottom_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right + move_speed, y + bb_bottom);

		if (tile_get_index(_top_tile) == 0 && tile_get_index(_bottom_tile) == 0) {
			x += move_speed;
		}
		
		else {
			for (var i=0; i<move_speed; i++) {
				_top_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right + i, y + bb_top);
				_bottom_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right + i, y + bb_bottom);
				
				if (tile_get_index(_top_tile) != 0 && tile_get_index(_bottom_tile) != 0) {
					x = ceil(x + (i-1));
					break;
				}
			}
		}
	}
	
	else {
		my_facing = facing.left;
		_top_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left - move_speed, y + bb_top);
		_bottom_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left - move_speed, y + bb_bottom);
		
		if (tile_get_index(_top_tile) == 0 && tile_get_index(_bottom_tile) == 0) {
			x -= move_speed;
		}
		
		else {
			for (var i=0; i<move_speed; i++) {
				_top_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right - i, y + bb_top);
				_bottom_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right - i, y + bb_bottom);
				
				if (tile_get_index(_top_tile) != 0 && tile_get_index(_bottom_tile) != 0) {
					x = floor(x - (i+1));
					break;
				}
			}
		}
	}
}

else {
	if (my_state != actor_state.booping) {
		my_state = actor_state.idle;
	}
}

#endregion

#region Jumping
var _left_tile, _right_tile;

// On Ground
if (on_ground)  {
	_left_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left, y + bb_bottom + 1)
	_right_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right, y + bb_bottom + 1)
	
	if (tile_get_index(_left_tile) == 0 && tile_get_index(_right_tile) == 0) {
		on_ground = false;
	}
}

// Apply Gravity
else {
	yspeed = min(grav + yspeed, max_fall_speed);
}

// Rising
if (yspeed < 0) {
	_left_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left, y + bb_top + yspeed);
	_right_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right, y + bb_top + yspeed);
	
	if (tile_get_index(_left_tile) == 0 && tile_get_index(_right_tile) == 0) {
		y += yspeed;
	}
	
	else {
		y = yprevious;
		for (var i=0; i<yspeed; i+=0.1) {
			_left_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left, y + bb_top - i);
			_right_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right, y + bb_top - i);
				
			if (tile_get_index(_left_tile) != 0 && tile_get_index(_right_tile) != 0) {
				y = floor(y - (i+1));
				break;
			}
		}
		yspeed = 0;
	}
}

// Falling
else if (yspeed > 0) {
	_left_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left, y + bb_bottom + yspeed);
	_right_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right, y + bb_bottom + yspeed);
	
	if (tile_get_index(_left_tile) == 0 && tile_get_index(_right_tile) == 0) {
		y += yspeed;
	}
	
	else {
		for (var i=0; i<yspeed; i+=0.1) {
			_left_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_left, y + bb_bottom + i);
			_right_tile = tilemap_get_at_pixel(walls_tilemap, x + bb_right, y + bb_bottom + i);
				
			if (tile_get_index(_left_tile) != 0 && tile_get_index(_right_tile) != 0) {
				y = ceil(y + (i-1));
				break;
			}
		}
		yspeed = 0;
		on_ground = true;
	}
}

// Jumping
if (keyboard_check_pressed(key_up) && on_ground) {
	yspeed = jump_speed;
	on_ground = false;
}

#endregion