if (my_actor_state != actor_state.booped) {
	my_actor_state = actor_state.booped;
	alarm[0] = -1;
	audio_play_sound(snd_booped, 50, false);
	var _h = instance_create_layer(other.x, other.y, "FG_Effects", obj_heart);

	if (other.owner.my_facing == facing.left) {
		_h.wiggle_x *= -1;
	}
	var _points = my_value * other.owner.my_multipler;
	_h.my_value = _points;
	score += _points;
	other.owner.my_multipler++;
	other.owner.alarm[0] = other.owner.multiplier_cooldown;
}