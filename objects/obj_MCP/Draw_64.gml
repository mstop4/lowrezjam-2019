if (score_visible) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(global.fnt_numbers_white);
	draw_set_colour(c_white);
	draw_text(1, 1, string(score));
	
	draw_set_colour(merge_colour(c_white,$9060FF, max(0, obj_player.alarm[0]/obj_player.multiplier_cooldown)));
	draw_text(1, 9, "x" + string(obj_player.my_multipler));
	
	draw_set_halign(fa_right);
	draw_set_colour(c_white);
	draw_sprite(spr_player_icon, 0, 49, 1);
	draw_text(63, 1, "x" + string(max(lives, 0)));
}