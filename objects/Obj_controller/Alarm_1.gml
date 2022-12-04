randomize();
instance_create_layer(room_width + 100, room_height/2+irandom_range(-room_height/2,-250), "Instances", obj_clouds);

if(global.gameOver) exit;

alarm[1] = room_speed * random_range(3/global.speedModifier, 6/global.speedModifier);
