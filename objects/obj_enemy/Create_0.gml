my_facing = facing.right;
my_actor_state = actor_state.moving;
my_sprite_state = actor_state.moving;

my_sprite[actor_state.idle, facing.right] = spr_player_idle_right;
my_sprite[actor_state.idle, facing.left] = spr_player_idle_left;
my_sprite[actor_state.moving, facing.right] = spr_enemy_move_right;
my_sprite[actor_state.moving, facing.left] = spr_enemy_move_left;
my_sprite[actor_state.booping, facing.right] = spr_player_boop_right;
my_sprite[actor_state.booping, facing.left] = spr_player_boop_left;
my_sprite[actor_state.ascending, facing.right] = spr_player_ascend_right;
my_sprite[actor_state.ascending, facing.left] = spr_player_ascend_left;
my_sprite[actor_state.falling, facing.right] = spr_player_fall_right;
my_sprite[actor_state.falling, facing.left] = spr_player_fall_left;
my_sprite[actor_state.booped, facing.right] = spr_enemy_booped_right;
my_sprite[actor_state.booped, facing.left] = spr_enemy_booped_left;

bb_top = -7
bb_bottom = 0;
bb_left = -5;
bb_right = 5;

walls_layer = layer_get_id("Walls");
walls_tilemap = layer_tilemap_get_id(walls_layer);