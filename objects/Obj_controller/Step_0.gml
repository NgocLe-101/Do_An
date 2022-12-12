if (!global.gameOver)
	global.speedModifier += 0.00005;
game_score += 0.1*(global.speedModifier);
if (floor(game_score)==i)
{
	score++;
	i++;
}
