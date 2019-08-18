if (my_actor_state != actor_state.booping &&
	my_actor_state != actor_state.booped &&
	my_actor_state != actor_state.stunned &&
	other.my_actor_state != actor_state.booped) {
		
	if (x >= other.x) my_facing = facing.left;
	else my_facing = facing.right;

	if (my_actor_state != actor_state.preparing) {
		image_index = 0;
		image_speed = 0;
		alarm[1] = 40;
		my_actor_state = actor_state.preparing;
	}
}