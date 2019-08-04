my_sprite[actor_state.idle, facing.right] = spr_player_idle_right;
my_sprite[actor_state.moving, facing.right] = spr_player_move_right;
my_sprite[actor_state.idle, facing.left] = spr_player_idle_left;
my_sprite[actor_state.moving, facing.left] = spr_player_move_left;

my_state = actor_state.idle;
my_facing = facing.right;