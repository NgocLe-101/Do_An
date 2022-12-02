randomize();
instance_create_layer(room_width + 100, room_height/2+irandom_range(-room_height/2,-100), "Instances", Obj_clouds);

alarm[1] = room_speed * random_range(3/global.speedModifier, 6/global.speedModifier);
