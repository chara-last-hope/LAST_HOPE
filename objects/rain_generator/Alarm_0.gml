repeat(2){
	instance_create_depth(camera.x+random_range(-40,camera.width/camera.scale_x+40),camera.y+random_range(-50,-120),depth,rain_drop);
}
alarm[0]=time;