if(y>_goal){
	repeat(3){
		instance_create_depth(x,y,depth,rain_plink);
	}
	instance_destroy();
}