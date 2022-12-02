// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script5(){
if (jumping || falling) {
	sprite_index = spr_jumping;
}
if (ducking)
{
	sprite_index = standing;
	image_speed = 2;
}
if (!jumping && !falling && !ducking) 
{
	sprite_index = running;
	image_speed = 2;
}
}