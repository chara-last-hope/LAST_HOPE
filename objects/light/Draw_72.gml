if(instance_exists(light_controller)){
	surface_set_target(light_controller._surface);{
		gpu_set_blendmode(bm_subtract);
		//draw_circle(x,y,30,false);
		draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		gpu_set_blendmode(bm_normal);
	}surface_reset_target();
}