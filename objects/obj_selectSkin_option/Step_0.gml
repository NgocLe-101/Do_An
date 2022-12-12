// get input
left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
upKey = keyboard_check_pressed(vk_up);
downKey = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(vk_enter);

// play sound
if (left||right||upKey||downKey)
	audio_play_sound(select_sound,100,false);
if (acceptKey)
	audio_play_sound(choose_sound,100,false);
// set position
if (isInSelect) {
posi += (right - left);
if (posi<0) {posi = 2;}
if (posi>=3) {posi = 0;}
if (acceptKey) {
	global.isSelectedSkin = posi;
	room_goto(Room1);
}
if (downKey)
	isInSelect = false;
} else
{
	if (upKey)
		isInSelect = true;
	else if (acceptKey)
		room_goto(room_title);
}










