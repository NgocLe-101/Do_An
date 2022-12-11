// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_increase_background_speed(){
	var lay_0 = layer_get_id("Background");
	var lay_1 = layer_get_id("Background_1");
	var lay_2 = layer_get_id("Background_2");
	var lay_3 = layer_get_id("Background_3");
	var lay_4 = layer_get_id("Background_4");
	var lay_5 = layer_get_id("Background_5");
	var lay_6 = layer_get_id("Background_6");
	var lay_7 = layer_get_id("Background_7");
	var lay_8 = layer_get_id("Background_8");
	var lay_9 = layer_get_id("Background_9");
	var lay_10 = layer_get_id("Background_10");
	var lay_11 = layer_get_id("Background_11");
	layer_hspeed(lay_0, -6*global.speedModifier);
	layer_hspeed(lay_1, -6*global.speedModifier);
	layer_hspeed(lay_2, -5*global.speedModifier);
	layer_hspeed(lay_3, -5*global.speedModifier);
	layer_hspeed(lay_4, -2*global.speedModifier);
	layer_hspeed(lay_5, -4*global.speedModifier);
	layer_hspeed(lay_6, -3*global.speedModifier);
	layer_hspeed(lay_7, -3*global.speedModifier);
	layer_hspeed(lay_8, -3*global.speedModifier);
	layer_hspeed(lay_9, -3*global.speedModifier);
	layer_hspeed(lay_10, -3*global.speedModifier);
	layer_hspeed(lay_11, -3*global.speedModifier);
}