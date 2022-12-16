// draw menu background
if (menu_level!=2)
	draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
else
	draw_sprite_ext(sprite_index, image_index, x, y, width*1.2/sprite_width, height/sprite_height, 0, c_white, 1);
draw_set_font(global.font_menu)
// draw the options
draw_set_valign(fa_top);
draw_set_halign(fa_left);
if  (menu_level==1) draw_sprite_ext(spr_select_button,0,x+op_border-20,y+op_border + op_space*global.gameLevel+10,150/sprite_width,150/sprite_height,0,c_white,1);
for (var i = 0; i < op_length; i++)
	{
	var _c = c_white;
	if pos == i {_c = c_yellow};
	if (menu_level!=2)
		draw_text_transformed_color(x+op_border, y+op_border + op_space*i, option[menu_level, i],1.5,1.5,0, _c, _c, _c, c_red, 1);
	else
		draw_text_transformed_color(x+op_border, y+op_border + op_space*4, option[menu_level, i],1.5,1.5,0, _c, _c, _c, c_red, 1);
	}
if (menu_level==2)
{
	draw_set_font(font_about);
	var _c = c_white;
	draw_text_transformed_color(x+op_border, y+op_border + op_space*0, "GROUP MEMBERS:",1.5,1.5,0, c_yellow, c_yellow, c_yellow, c_red, 1);
	draw_text_transformed_color(x+op_border, y+op_border + op_space*1, "LE NGUYEN HONG NGOC",1.3,1.3,0, _c, _c, _c, c_red, 1);
	draw_text_transformed_color(x+op_border, y+op_border + op_space*2, "THAI DINH NGAN",1.3,1.3,0, _c, _c, _c, c_red, 1);
	draw_text_transformed_color(x+op_border, y+op_border + op_space*3, "VO VAN NAM",1.3,1.3,0, _c, _c, _c, c_red, 1);
}