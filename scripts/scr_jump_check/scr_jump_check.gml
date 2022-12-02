// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_jump_check(jumping, vspd, falling){
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
}