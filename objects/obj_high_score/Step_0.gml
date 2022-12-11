// get inputs
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _accept = keyboard_check_pressed(vk_enter);

// move through menu
var _move = _down - _up;
if (_move != 0) {
	index += _move;
	
	if (index < 0) index = 5;
	else if (index >= 6) index = 0;
	
}
