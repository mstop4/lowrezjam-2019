var _x = floor(clamp(obj_player.x - 32, 0, room_width - 64));
var _y = floor(clamp(obj_player.y - 36, 0, room_height - 64));

camera_set_view_pos(view_camera[view_current], _x, _y);
