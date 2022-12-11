draw_set_halign(fa_center);
draw_set_font(global.font_menu);

for (var i = 0; i < 6; i++) {
	draw_set_color(c_white);
	if i == index {draw_set_color(c_yellow);}
	draw_text(room_width/2, room_height * 4 + 40 * i, hs[i]);
}
