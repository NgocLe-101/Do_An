global.gameOver = true;
grav = 0;
global.speedModifier = 0;
image_speed = 0;
sprite_index = spr_dead;
scr_pause_background();

if (!instance_exists(obj_replay))
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_replay);
	
with (obj_obstacle)
	image_speed = 0;
with (obj_big_orge)
	image_speed = 0;