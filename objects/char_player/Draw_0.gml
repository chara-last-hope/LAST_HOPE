if(inwater = 1) {
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, abs(sprite_width), sprite_height - 5, x+(image_xscale==-1?-sprite_width:0)-abs(round(sprite_width/2)), y+4-sprite_height, image_xscale, 1, c_white, image_alpha);
	draw_sprite(spr_waterripple, 0, x-abs(round(sprite_width/2)), y-sprite_height);
}
else{
    draw_self();
}