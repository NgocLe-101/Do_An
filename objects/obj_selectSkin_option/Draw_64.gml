draw_sprite(spr_RoomSkins_pad,0,room_width/2,room_height/2);
//set font
var _c=c_white;
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(global.font_menu);
//draw_text_color(room_width/2,20,"SELECT YOUR SKIN",_c,_c,_c,c_red,1);
draw_text_transformed_color(room_width/2,30,"SELECT YOUR SKIN",2,2,0,c_white,c_white,c_white,c_red,1);
if (isInSelect)
	draw_sprite(spr_Select_box,0,scr_returnlocation_x(posi),room_height/2-100);
draw_sprite_ext(spr_standing,-1,room_width/2-300,room_height/2,1.5,1.5,0,scr_return_draw(posi,isInSelect),1);
draw_sprite_ext(spr_player_model1_standing,-1,room_width/2,room_height/2,1.5,1.5,0,scr_return_draw(posi-1,isInSelect),1);
draw_sprite_ext(spr_player_model2_standing,-1,room_width/2+300,room_height/2,1.5,1.5,0,scr_return_draw(posi-2,isInSelect),1);
if (!isInSelect) _c=c_yellow;
draw_text_transformed_color(room_width/2,room_height-100,"BACK",2,2,0,_c,_c,_c,c_red,1);








