if (my_actor_state == actor_state.blbl) {
	switch (my_blbl_stage) {
		case 0:
			my_sprite_state = actor_state.blbl_begin;
			break;
		case 1:
			my_sprite_state = actor_state.blbl_loop;
			break;
		case 2:
			my_sprite_state = actor_state.blbl_end;
			break;
		default:
			my_sprite_state = actor_state.blbl_loop;
			break;
	}
}
	
else if (my_actor_state == actor_state.booping) {
	my_sprite_state = actor_state.booping;
}
	
else {
	if (!on_ground) {
		if (yspeed < 0) {
			my_sprite_state = actor_state.ascending;
		}
		
		else {
			my_sprite_state = actor_state.falling;
		}
	}
	my_sprite_state = my_actor_state;	
}
