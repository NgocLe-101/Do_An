global.gameOver = true;
global.speedModifier = 0;
audio_pause_sound(background_song);
audio_play_sound(endgame, 1000, false);
scr_pause_background();

with (obj_big_orge)
	image_speed = 0;
with (obj_obstacle)
	image_speed = 0;