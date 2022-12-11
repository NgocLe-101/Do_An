if (!global.gameOver)
{
audio_pause_sound(main_menu_sound);
scr_increase_background_speed();
global.seconds += 1/room_speed;
time = global.seconds;
jumpkey = keyboard_check_pressed(vk_space);
jumpkeyAlt = keyboard_check_pressed(vk_up);
standKey = keyboard_check(vk_down);
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);

if (rightKey) {
	hspd = 6*global.speedModifier;
}
if (leftKey) {
	walking = true;
	running = false;
	hspd = -3*global.speedModifier;
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
			hspd = -6*global.speedModifier;
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
// jumping = 0; running = 1; standing = 2; walking = 3; dead = 4;
if (jumping || falling) {
	get_image_index(global.isSelectedSkin,0)
} else if (standing)
{
	get_image_index(global.isSelectedSkin,2)
} else if (running) 
{
	get_image_index(global.isSelectedSkin,1)
} else if (walking)
{
	get_image_index(global.isSelectedSkin,3)
}
} else {
	get_image_index(global.isSelectedSkin,2)
	audio_pause_sound(background_song);
	if (fixLoop)
	{
		audio_play_sound(endgame, 100, false);
		fixLoop = false;
	}
	if (place_meeting(x,y+1,obj_floor))
{
	get_image_index(global.isSelectedSkin,4)
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