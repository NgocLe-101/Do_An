if (!global.gameOver) {
draw_set_halign(fa_left)
draw_set_font(font_draw)
draw_text(100, 100, option[0, i]);
if (scr_check_key_pressed(i))
	i++;
}