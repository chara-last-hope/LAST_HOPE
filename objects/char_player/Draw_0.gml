if(inwater = 1) {
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, sprite_height - 5, x, y-10, 1, 1, 16777215, image_alpha);
    draw_sprite(spr_waterripple, 0, x +1, y);
}
else{
	draw_self();
}
/*
{
	if(keyboard_check(vk_enter)){
		draw_set_color(c_red);
		if(dir==DIR.UP){
			draw_rectangle(x-sprite_width/2+4,y-5,x+sprite_width/2-4,y-sprite_height+5,true);
		}
		if(dir==DIR.DOWN){
			draw_rectangle(x-sprite_width/2+4,y-sprite_height+20,x+sprite_width/2-4,y+15,true);
		}
		if(dir==DIR.LEFT){
			draw_rectangle(x,y-sprite_height+19,x+sprite_width/2-15,y,true);
		}
		if(dir==DIR.RIGHT){
			draw_rectangle(x,y-sprite_height+19,x+sprite_width/2+15,y,true);
		}
	}
}
*/