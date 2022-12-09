if(global.gameOver)
{
	sprite_index = spr_dead;
	exit;
}

if (jumping || falling) {
	sprite_index = spr_jumping;
} else if (standing)
{
	sprite_index = spr_standing;
} else if (running) 
{
	sprite_index = spr_running;
} else if (walking)
{
	sprite_index = spr_walking;
}