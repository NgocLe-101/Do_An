// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_returnlocation_x(a){
	switch (a)
{
	case 1:
		return room_width/2;
	case 2:
		return room_width/2+300; break;
	default:
		return room_width/2-300; break;
}
}