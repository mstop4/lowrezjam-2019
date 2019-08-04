var _h_input = keyboard_check(key_right) - keyboard_check(key_left);
var _v_input = keyboard_check(key_down) - keyboard_check(key_up);

x += _h_input * move_speed;

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
	if (my_state != actor_state.booping) {
		my_state = actor_state.moving;
	}
	my_facing = _h_input == 1 ? facing.right : facing.left;
}

else {
	if (my_state != actor_state.booping) {
		my_state = actor_state.idle;
	}
}