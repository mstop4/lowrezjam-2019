if (!on_ground) {
	if (char_state != actor_state.booping) {
		if (yspeed < 0) {
			sprite_state = actor_state.ascending;
		}
		else {
			sprite_state = actor_state.falling;
		}
	}
	
	else {
		sprite_state = actor_state.booping;
	}
}

else {
	sprite_state = char_state;
}