if (my_actor_state != actor_state.stunned && my_actor_state != actor_state.booped) {
	my_actor_state = actor_state.stunned;
	alarm[0] = stun_time;
	instance_create_layer(x, y-10, "FG_Effects", obj_gasp);
}