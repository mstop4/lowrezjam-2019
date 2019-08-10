if (my_actor_state == actor_state.booping) {
	my_actor_state = actor_state.idle;
}

else if (my_actor_state == actor_state.blbl) {
	switch (my_blbl_stage) {
		case 0:
			my_blbl_stage++;
			break;
		case 1:
			my_blbl_cycles++;
			if (my_blbl_cycles >= blbl_cycles) {
				my_blbl_stage++;
			}
			break;
		case 2:
			my_actor_state = actor_state.idle;
			instance_deactivate_object(blbl_hitbox);
			break;
	}
}
