draw_sprite(spr_RoomSkins_pad,0,room_width/2,room_height/2);

draw_sprite(spr_Select_box,0,scr_returnlocation_x(posi),room_height/2-100);
draw_sprite_ext(spr_standing,-1,room_width/2-300,room_height/2,1.5,1.5,0,scr_return_draw(posi),1);
draw_sprite_ext(spr_player_model1_standing,-1,room_width/2,room_height/2,1.5,1.5,0,scr_return_draw(posi-1),1);
draw_sprite_ext(spr_player_model2_standing,-1,room_width/2+300,room_height/2,1.5,1.5,0,scr_return_draw(posi-2),1);








