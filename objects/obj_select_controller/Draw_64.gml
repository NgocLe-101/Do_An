if (global.selectButtonLocation == 0)
{
	if (keyboard_check_pressed(vk_down)||keyboard_check_pressed(vk_up))
	{	audio_play_sound(select_sound,100,false);
			global.selectButtonLocation =1;
	}
} else if (global.selectButtonLocation == 1)
{
	if (keyboard_check_pressed(vk_down)||keyboard_check_pressed(vk_up))
	{	audio_play_sound(select_sound,100,false);
			global.selectButtonLocation =0;	
	}
}

if (global.selectButtonLocation == 0)
	draw_sprite(spr_select_button,0,room_width/2-350, room_height/2+20)
else if (global.selectButtonLocation == 1)
	draw_sprite(spr_select_button,0,room_width/2-350, room_height/2+100)
