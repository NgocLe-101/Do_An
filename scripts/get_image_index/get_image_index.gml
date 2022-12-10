// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_image_index(a, b){
	switch (a) {
		case 0:
			if (b==0) sprite_index = spr_jumping;
			else if (b==1) sprite_index = spr_running;
			else if (b==2) sprite_index = spr_standing;
			else if (b==3) sprite_index = spr_walking;
			else if (b==4) sprite_index = spr_player_dead;
			break;
		case 1:
			if (b==0) sprite_index = spr_player_model1_jumping;
			else if (b==1) sprite_index = spr_player_model1_running;
			else if (b==2) sprite_index = spr_player_model1_standing;
			else if (b==3) sprite_index = spr_player_model1_walking;
			else if (b==4) sprite_index = spr_player_model1_dead;
			break;
		case 2:
			if (b==0) sprite_index = spr_player_model2_jumping;
			else if (b==1) sprite_index = spr_player_model2_running;
			else if (b==2) sprite_index = spr_player_model2_standing;
			else if (b==3) sprite_index = spr_player_model2_walking;
			else if (b==4) sprite_index = spr_player_model2_dead;
			break;
		default:
			break;
	}
}