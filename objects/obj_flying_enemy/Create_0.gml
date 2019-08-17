event_inherited();

my_sprite[actor_state.moving, facing.right] = spr_flying_move_right;
my_sprite[actor_state.moving, facing.left] = spr_flying_move_left;
my_sprite[actor_state.stunned, facing.right] = spr_flying_stunned_right;
my_sprite[actor_state.stunned, facing.left] = spr_flying_stunned_left;
my_sprite[actor_state.booped, facing.right] = spr_flying_booped_right;
my_sprite[actor_state.booped, facing.left] = spr_flying_booped_left;
my_sprite[actor_state.booping, facing.right] = spr_flying_boop_right;
my_sprite[actor_state.booping, facing.left] = spr_flying_boop_left;
my_sprite[actor_state.preparing, facing.right] = spr_flying_boop_right;
my_sprite[actor_state.preparing, facing.left] = spr_flying_boop_left;