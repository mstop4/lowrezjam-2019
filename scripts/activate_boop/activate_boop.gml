var _boop = argument[0];

my_actor_state = actor_state.booping;
image_index = 0;

instance_activate_object(_boop);
with (_boop) {
	boop_hitbox_track_owner();
	image_index = 0;
	alarm[0] = active_frames;
}