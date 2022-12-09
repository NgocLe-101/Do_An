if (!global.gameOver)
{
global.seconds += 1/room_speed;
time = global.seconds;
jumpkey = keyboard_check_pressed(vk_space);
jumpkeyAlt = keyboard_check_pressed(vk_up);
standKey = keyboard_check(vk_down);
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);

if (rightKey) {
	hspd = 6;
}
if (leftKey) {
	walking = true;
	running = false;
	hspd = -3;
}
if (keyboard_check_released(vk_right)||keyboard_check_released(vk_left)||keyboard_check_released(vk_down))
	{hspd = 0; walking = false; running = true}
if (standKey) 
{
		standing = true;
		jumping = false;
		falling = true;
}
if (place_meeting(x,y+1,obj_floor))
{
		vspd = 0;
		jumping = false;
		falling = false;
		
		if (!standKey) {
			standing = false;
		} else 
		{
			hspd = -6;
		}
		
		if ((jumpkey||jumpkeyAlt) && !standKey) {
			jumping = true;
			audio_play_sound(jump, 100, false);
			vspd = -jspd;
		} 
	
}
else
{
	if (standing)
	{
		vspd += grav*4;
	} else {
		if (vspd < termVelocity)
			vspd +=grav;
		if (sign(vspd) == 1)
			falling = true;
	}
}

if (jumping) 
{
	if (vspd < 0)
	{
		jumping =  true;
	} else
	{
		jumping = false;
		falling = true;
	}
}
if (place_meeting(x,y+vspd, obj_floor))
{
	while (!place_meeting(x,y+sign(vspd),obj_floor))
	{
		y+= sign(vspd);	
	}
	vspd = 0;
}

if (x+hspd>0 && x+hspd<room_width) 
{
	x+=hspd;
}
y+=vspd;
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
} else {
	sprite_index = spr_standing;
	audio_pause_sound(background_song);
	if (fixLoop)
	{
		audio_play_sound(endgame, 100, false);
		fixLoop = false;
	}
	if (place_meeting(x,y+1,obj_floor))
{
	sprite_index = spr_player_dead;
	vspd = 0;
	image_index = imgchange;
	if ((global.seconds - time) == i*0.2)
	{
		if (image_index != image_number-1)
			{
				imgchange++;
				i++;
			}
	}
	global.seconds+=1/room_speed;
	if ((global.seconds - time) == 1)
	{
		global.isPop = true;
		image_speed = 0;
		if (!instance_exists(obj_replay))
		{
			instance_create_layer(room_width/2, room_height/2+20, "Instances", obj_replay);
			global.selectButtonLocation = 0;
			exit;
		}
	}
} else {
	if (vspd < termVelocity)
			y+=grav*5;
}
}