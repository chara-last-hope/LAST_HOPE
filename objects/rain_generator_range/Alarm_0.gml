repeat(2){
	instance_create_depth(x+random_range(0,sprite_width),y,depth,rain_drop);
}
alarm[0]=time;