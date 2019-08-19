if (my_state == 0) 
	draw_sprite(sprite_index, image_index, floor(x), floor(y));
	
else if (my_value > 0) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_left);
	draw_set_colour(c_white);
	draw_set_font(global.fnt_numbers_pink);
	draw_text(floor(x - str_w/2), floor(y - str_h/2), string(my_value));
}