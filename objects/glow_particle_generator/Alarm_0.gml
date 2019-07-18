if(point_in_rectangle(x,y,camera.x,camera.y,camera.x+camera.width/camera.scale_x,camera.y+camera.height/camera.scale_y)){
	instance_create_depth(x+random(60)-20,y-15,depth,glow_particle);
}
alarm[0]=20;