if (my_actor_state != actor_state.booped) {
	my_actor_state = actor_state.booped;
	alarm[0] = -1;
	var _h = instance_create_layer(other.x, other.y, "FG_Effects", obj_heart);

	if (other.owner.my_facing == facing.left) {
		_h.wiggle_x *= -1;
	}
}