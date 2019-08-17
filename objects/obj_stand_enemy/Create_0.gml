event_inherited();

my_sprite[actor_state.idle, facing.right] = spr_stand_idle_right;
my_sprite[actor_state.idle, facing.left] = spr_stand_idle_left;
my_sprite[actor_state.booping, facing.right] = spr_stand_boop_right;
my_sprite[actor_state.booping, facing.left] = spr_stand_boop_left;
my_sprite[actor_state.booped, facing.right] = spr_stand_booped_right;
my_sprite[actor_state.booped, facing.left] = spr_stand_booped_left;
my_sprite[actor_state.stunned, facing.right] = spr_stand_stunned_right;
my_sprite[actor_state.stunned, facing.left] = spr_stand_stunned_left;
my_sprite[actor_state.preparing, facing.right] = spr_stand_boop_right;
my_sprite[actor_state.preparing, facing.left] = spr_stand_boop_left;