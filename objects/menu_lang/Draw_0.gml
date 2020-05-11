/// @description Insert description here
// You can write your code in this editor
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_font(font_mars_needs_cunnilingus);
	draw_set_color(c_gray);
	draw_text_transformed(160,230,"CHARA: LAST HOPE (C) Nightshade Games 2018-2020\nUNDERTALE ENGINE "+ENGINE_VERSION+" BY TML",0.3,0.3,0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	if(debug_mode){
	draw_text_transformed(0,0,"Menu Choice: " +string(_choice),0.3,0.3,0)
	}