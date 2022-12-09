draw_set_color(make_color_rgb(28,16,11));
draw_set_font(font_main);
draw_text(room_width-100, 20, string(score));



if (global.isPop)
	draw_sprite(spr_game_over, 0, room_width/2, room_height/3);