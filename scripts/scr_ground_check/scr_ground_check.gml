// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GroundCheck(duckKey, jumpkey, jumpkeyAlt){
	if (duckKey) {
		ducking = true;
		jumping = false;
		falling = true;
	}
	if (place_meeting(x,y+1,spr_floor))
	{
		vspd = 0;
		jumping = false;
		falling = false;
		
		if (!duckKey) {
			ducking = false;
		}
		
		if ((jumpkey||jumpkeyAlt) && !duckKey) {
			jumping = true;
			vspd = -jspd;
		} 
	
}
else
{
	if (ducking)
	{
		vspd += grav*4;
	} else {
		if (vspd < termVelocity)
			vspd +=grav;
		if (sign(vspd) == 1)
			falling = true;
	}
}}