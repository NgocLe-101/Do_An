if (global.selectButtonLocation==0)
{
	draw_sprite(spr_exit_hovered,0,room_width/2, room_height/2+100)
	draw_sprite(spr_restart_hovered,0,room_width/2, room_height/2+20)
}
else if (global.selectButtonLocation==1)
{
	draw_sprite(spr_exit_hovered,0,room_width/2, room_height/2+100)
	draw_sprite(spr_restart_textbox,0,room_width/2, room_height/2+20)
}