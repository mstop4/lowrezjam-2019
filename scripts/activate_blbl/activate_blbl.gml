var _blbl = argument[0];

my_actor_state = actor_state.blbl;
image_index = 0;
my_blbl_stage = 0;
my_blbl_cycles = 0;
audio_play_sound(snd_blbl, 50, false);

instance_activate_object(_blbl);
with (_blbl) {
	blbl_hitbox_track_owner();
}