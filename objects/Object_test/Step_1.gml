jumpkey = keyboard_check_pressed(vk_space);
jumpkeyAlt = keyboard_check_pressed(vk_up);
standKey = keyboard_check(vk_down);
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);

if (rightKey) {
	hspd = 5;
}
if (leftKey) {
	walking = true;
	running = false;
	hspd = -1.5;
}
if (keyboard_check_released(vk_right)||keyboard_check_released(vk_left))
	{hspd = 0; walking = false; running = true}
if (standKey) 
{
		standing = true;
		jumping = false;
		falling = true;
}
if (place_meeting(x,y+1,spr_floor))
{
		vspd = 0;
		jumping = false;
		falling = false;
		
		if (!standKey) {
			standing = false;
		} else 
		{
			hspd = -5;
		}
		
		if ((jumpkey||jumpkeyAlt) && !standKey) {
			jumping = true;
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
if (place_meeting(x,y+vspd, spr_floor))
{
	while (!place_meeting(x,y+sign(vspd),spr_floor))
	{
		y+= sign(vspd);	
	}
	vspd = 0;
}
y+=vspd;
x+=hspd;


