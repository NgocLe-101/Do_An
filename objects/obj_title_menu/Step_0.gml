// get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

// store number of options in current menu
op_length = array_length(option[menu_level]);

// play sound
if (up_key||down_key)
	audio_play_sound(select_sound,100,false);
if (accept_key)
	audio_play_sound(choose_sound,100,false);

// move through menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

// using the options
if accept_key {
	var _sml = menu_level;
	if (menu_level==0)
	{
		if (pos==0) room_goto(Room_Skins); //start game
		else if (pos==1) menu_level = 1; //level
		else if (pos==2) room_goto(room_scores); //high score
		else if (pos==3) menu_level = 2; //about
		else if (pos==4) game_end();
	} else if (menu_level==1)
	{
		if (pos!=3) global.gameLevel = pos;
		else menu_level = 0;
	} else if (menu_level==2)
	{
		if (pos==0) menu_level=0;	
	}
/*	switch(menu_level) {
		// pause menu
		case 0:
			switch(pos) {
				// start game
				case 0:
					room_goto(Room_Skins);
					break;
				// level
				case 1: menu_level = 1; break;
				// high score
				case 2: 
					room_goto(room_scores);
					break;
				// quit game
				case 3: game_end(); break;
			}
		// level
		case 1:
			switch(pos) {
				// EASY
				case 0:
				global.gameLevel = 0;
					break;
				// MEDIUM
				case 1:
				global.gameLevel = 1;
					break;
				// HARD
				case 2:
				global.gameLevel = 2;
					break;
				// back
				case 3:
					menu_level = 0;
					break;
		
			}
	}
	*/
	// if change menu level, then the pos return to 0 ( the first option of that menu level )
	if _sml != menu_level {pos = 0};

	// correct option length
	op_length = array_length(option[menu_level]);
	
}

