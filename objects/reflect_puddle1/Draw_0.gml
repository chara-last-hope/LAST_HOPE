if(instance_exists(char_player)){
	//draw_sprite_ext(spr_pixel,0,x,y,sprite_width,sprite_height,0,c_black,1);
	var sprite=char_player.sprite_index;
	if(_dark){
		switch(sprite){
			case spr_char_chara_up:
				sprite=spr_char_chara_dark_up;
				break;
			case spr_char_chara_down:
				sprite=spr_char_chara_dark_down;
				break;
			case spr_char_chara_right:
				sprite=spr_char_chara_dark_right;
				break;
		}
	}
	if(!surface_exists(_surface1)){
		_surface1=surface_create(sprite_width,sprite_height);
	}
	surface_set_target(_surface1){
		draw_clear(c_black);
		draw_sprite_ext(sprite,char_player.image_index,char_player.x-x,char_player.y-y,char_player.image_xscale,-char_player.image_yscale,0,c_white,0.4);
	}surface_reset_target();
	draw_surface(_surface1,x,y);
	draw_sprite(spr_reflect_puddle1, 0, x, y);
}