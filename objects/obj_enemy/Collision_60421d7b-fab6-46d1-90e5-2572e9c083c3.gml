if (my_actor_state != actor_state.stunned && my_actor_state != actor_state.booped) {
	my_actor_state = actor_state.stunned;
	alarm[0] = stun_time;
	alarm[1] = -1;
	image_speed = 1;
	instance_create_layer(x, y-10, "FG_Effects", obj_gasp);
	audio_play_sound(snd_gasp, 50, false);
	
	if (other.owner.x <= x)
		my_facing = facing.left;
	else
		my_facing = facing.right;
}