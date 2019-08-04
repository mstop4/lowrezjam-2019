var _h_input = keyboard_check(key_right) - keyboard_check(key_left);
var _v_input = keyboard_check(key_down) - keyboard_check(key_up);

x += _h_input * move_speed;

if (_h_input != 0) {
	my_state = actor_state.moving;
	my_facing = _h_input == 1 ? facing.right : facing.left;
}

else {
	my_state = actor_state.idle;
}