// draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
draw_set_font(global.font_menu)
// draw the options
draw_set_valign(fa_top);
draw_set_halign(fa_left);
if  (menu_level==1) draw_sprite_ext(spr_select_button,0,x+op_border-20,y+op_border + op_space*global.gameLevel+10,150/sprite_width,150/sprite_height,0,c_white,1);
for (var i = 0; i < op_length; i++)
	{
	var _c = c_white;
	if pos == i {_c = c_yellow};
	draw_text_color(x+op_border, y+op_border + op_space*i, option[menu_level, i], _c, _c, _c, _c, 1);
	}