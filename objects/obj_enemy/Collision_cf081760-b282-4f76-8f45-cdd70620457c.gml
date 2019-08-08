if (char_state != actor_state.booped && other.char_state == actor_state.booping) {
	char_state = actor_state.booped;
	
	if (other.my_facing == facing.right) {
		instance_create_layer(other.x+4, other.y-4, "FG_Effects", obj_heart);
	}
	else {
		var _h = instance_create_layer(other.x-4, other.y-4, "FG_Effects", obj_heart);
		_h.wiggle_x *= -1;
	}
}