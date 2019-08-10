my_sprite[actor_state.idle, facing.right] = spr_player_idle_right;
my_sprite[actor_state.idle, facing.left] = spr_player_idle_left;
my_sprite[actor_state.moving, facing.right] = spr_player_move_right;
my_sprite[actor_state.moving, facing.left] = spr_player_move_left;
my_sprite[actor_state.booping, facing.right] = spr_player_boop_right;
my_sprite[actor_state.booping, facing.left] = spr_player_boop_left;
my_sprite[actor_state.blbl_begin, facing.right] = spr_player_bl_begin_right;
my_sprite[actor_state.blbl_begin, facing.left] = spr_player_bl_begin_left;
my_sprite[actor_state.blbl_loop, facing.right] = spr_player_bl_loop_right;
my_sprite[actor_state.blbl_loop, facing.left] = spr_player_bl_loop_left;
my_sprite[actor_state.blbl_end, facing.right] = spr_player_bl_end_right;
my_sprite[actor_state.blbl_end, facing.left] = spr_player_bl_end_left;
my_sprite[actor_state.ascending, facing.right] = spr_player_ascend_right;
my_sprite[actor_state.ascending, facing.left] = spr_player_ascend_left;
my_sprite[actor_state.falling, facing.right] = spr_player_fall_right;
my_sprite[actor_state.falling, facing.left] = spr_player_fall_left;
my_sprite[actor_state.booped, facing.right] = spr_enemy_booped_right;
my_sprite[actor_state.booped, facing.left] = spr_enemy_booped_left;

my_actor_state = actor_state.idle;
my_sprite_state = actor_state.idle;
my_blbl_stage = 0;
my_blbl_cycles = 0;
my_facing = facing.right;

yspeed = 0;
on_ground = true;

bb_top = -7
bb_bottom = 0;
bb_left = -5;
bb_right = 5;

walls_layer = layer_get_id("Walls");
walls_tilemap = layer_tilemap_get_id(walls_layer);

camera_set_update_script(view_camera[0], camera_follow_player);
boop_hitbox = instance_create_layer(x, y, "FG_Effects", obj_boop);
boop_hitbox.owner = id;
blbl_hitbox = instance_create_layer(x, y, "FG_Effects", obj_blbl);
blbl_hitbox.owner = id;