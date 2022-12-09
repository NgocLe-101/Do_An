if(keyboard_check_pressed(vk_enter))
{
	if (global.selectButtonLocation ==0)
	{
		game_restart();
		score = 0;	
	} else if (global.selectButtonLocation ==1)
	{}
}