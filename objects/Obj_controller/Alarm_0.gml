randomize();

var count = irandom_range(1, 2);

var i = instance_create_layer(room_width + 100, room_height-45, "Instances", obj_obstacle)
	
if (irandom_range(1,5)==2)
{
	if (global.gameLevel!=0) {
	var k = instance_create_layer(room_width + 100, room_height-45, "Instances", obj_big_orge)
	k.sprite_index = spr_big_orge;
	k.image_speed = 1;
	}
}


 i.sprite_index = choose(spr_big_demon,spr_chort);
 
switch(i.sprite_index)
{
	case spr_big_demon:
		i.image_speed = 1;
		i.image_index = irandom_range(0, sprite_get_number(i.sprite_index)-1)
		
	if (((global.speedModifier >1.2)&&(global.gameLevel=2))||(global.speedModifier >1.4)&&(global.gameLevel=1))
	{
		if (count == 2) {
			var j = instance_create_layer(room_width + 100, room_height-50, "Instances", obj_zombie)
			j.sprite_index = spr_zombie;
			j.image_speed = 1;
			j.image_index = 0;
		}
	}
	break;
	default:
		i.image_speed = 1;
		i.y = choose(room_height -55, room_height - choose(50,100), room_height - 160)
		break;
}


if(global.gameOver) exit;

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier)