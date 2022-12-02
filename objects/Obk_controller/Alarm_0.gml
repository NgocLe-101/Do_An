randomize();

var count = irandom_range(1, 2);

var i = instance_create_layer(room_width + 100, room_height-50, "Instances", obj_obstacle)
 i.sprite_index = choose(spr_barrel,spr_Flower_pot,spr_stone);
switch(i.sprite_index)
{
	case spr_barrel:
	case spr_Flower_pot:
	case spr_stone:
		i.image_speed = 0;
		i.image_index = irandom_range(0, sprite_get_number(i.sprite_index)-1)
		
	if (global.speedModifier >1.5)
	{
		if (count == 2) {
			var j = instance_create_layer(room_width + 100, room_height-75, "Instances", obj_obstacle)
			j.sprite_index = choose(spr_barrel,spr_Flower_pot,spr_stone, spr_rock_small);
			j.image_speed = 0;
			j.image_index = irandom_range(0, sprite_get_number(i.sprite_index)-1)

		}
	}
	break;
	default:
	i.image_speed = 1;
	i.y = choose(room_height -55, room_height - 125, room_height - 160)
}

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier)