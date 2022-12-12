if (score > 0 && global.selectButtonLocation == 1)
{
	highscore_add(global.Name, score);
}


if (score > 0 && global.selectButtonLocation == 0) {
	highscore_add(global.Name, score);
	score = 0;
	room_goto(Room1);
} else {
	score = 0;
}