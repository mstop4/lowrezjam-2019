if (!is_invincible && my_actor_state != actor_state.booped && other.owner != id) {
	my_actor_state = actor_state.booped;
	alarm[0] = -1;
	image_speed = 1;
	audio_play_sound(snd_booped, 50, false);
	var _h = instance_create_layer(other.x, other.y, "FG_Effects", obj_heart);

	if (other.owner.my_facing == facing.left) {
		_h.wiggle_x *= -1;
	}
	
	lives--;
	
	if (lives > -1) {
		alarm[1] = 120;
		alarm[2] = 270;
	}
	
	else {
		obj_counter.level_is_over = true;
		obj_counter.alarm[0] = 180;
	}
}