
function scr_check_key_pressed(i){
	if (i==0 && (keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_space)))
		return true;
	else if (i==1 && keyboard_check_pressed(vk_down))
		return true;
	else if (i==2 && global.checkForIns)
		return true;
	else if (i==3 && keyboard_check_pressed(vk_left))
		return true;
	else if (i==4 && keyboard_check_pressed(vk_right))
		return true;
}