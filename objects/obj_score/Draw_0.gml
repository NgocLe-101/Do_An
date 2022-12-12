/// @description Insert description here
// You can write your code in this editor

// draw box

draw_sprite(spr_score, 0, room_width/2 - spr_width/2, room_height/2 - spr_height/2);

// draw text

draw_text_color(room_width/2 - stringwidth/2, room_height/2 - 160, text, c_yellow, c_yellow, c_yellow, c_yellow, 1);
draw_text_ext(room_width/2 - string_width(highscore_value(1))/2, room_height/2 - 100, highscore_value(1), stringheight, spr_width);
draw_text_ext(room_width/2 - string_width(highscore_value(2))/2, room_height/2 - 60, highscore_value(2), stringheight, spr_width);
draw_text_ext(room_width/2 - string_width(highscore_value(3))/2, room_height/2 - 20, highscore_value(3), stringheight, spr_width);
draw_text_ext(room_width/2 - string_width(highscore_value(4))/2, room_height/2 + 20, highscore_value(4), stringheight, spr_width);
draw_text_ext(room_width/2 - string_width(highscore_value(5))/2, room_height/2 + 60, highscore_value(5), stringheight, spr_width);
draw_text_color(room_width/2 - string_width(comebackmenu)/2, room_height/2 + 120, comebackmenu, c_yellow, c_yellow, c_yellow, c_yellow, 1);





