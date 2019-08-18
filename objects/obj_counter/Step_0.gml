if (!level_is_over) {
	var _level_over = true;

	with (obj_enemy) {
		if (my_actor_state != actor_state.booped) {
			_level_over = false;
		}
	}

	if (_level_over) {
		level_is_over = true;
		alarm[0] = 180;
	}
}