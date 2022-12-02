// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script4(){
	if (place_meeting(x,y+vspd, spr_floor))
{
	while (!place_meeting(x,y+sign(vspd),spr_floor))
	{
		y+= sign(vspd);	
	}
	vspd = 0;
}
y+=vspd;

}