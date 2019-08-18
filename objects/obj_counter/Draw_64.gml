if (level_is_over) {
	if (lives > -1)
		draw_sprite(bck_level_complete, 0, 32, 32);
	else 
		draw_sprite(bck_gameover, 0, 32, 32);		
}