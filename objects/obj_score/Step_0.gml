/// @description Insert description here
// You can write your code in this editor

for (var ii = 1; ii < 6; ii++)
{
	if (high_score > hs[ii]) {
		var temp = hs[ii];
		hs[ii] = high_score;
		for (var jj = ii + 1; jj < 6; jj++) {
			hs[jj] = hs[jj - 1];
		}
	}
}

accept_key = keyboard_check_pressed(vk_enter);
if accept_key {
	room_goto(room_title);
}