// get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

// store number of options in current menu
op_length = array_length(option[menu_level]);

// move through menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

// using the options
if accept_key {
	var _sml = menu_level;
	switch(menu_level) {
		// pause menu
		case 0:
			switch(pos) {
				// start game
				case 0: room_goto(1); break;
				// level
				case 1: menu_level = 1; break;
				// quit game
				case 4: game_end(); break;
			}
		// level
		case 1:
			switch(pos) {
				// EASY
				case 0:
			
					break;
				// MEDIUM
				case 1:
			
					break;
				// HARD
				case 2:
			
					break;
				// back
				case 3:
					menu_level = 0;
					break;
		
			}
	}

	// if change menu level, then the pos return to 0 ( the first option of that menu level )
	if _sml != menu_level {pos = 0};

	// correct option length
	op_length = array_length(option[menu_level]);
}