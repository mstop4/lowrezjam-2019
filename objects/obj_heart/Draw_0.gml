if (my_state == 0) 
	draw_sprite(sprite_index, image_index, floor(x), floor(y));
	
else {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(global.fnt_numbers_pink);
	draw_text(x, y, string(my_value));
}