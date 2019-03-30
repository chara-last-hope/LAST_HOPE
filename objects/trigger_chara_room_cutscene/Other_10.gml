event_inherited();

fader.alpha=1;
Fader_Fade(-1,0,60);

with(char_player){
	moveable=false;
	res_idle_sprite[DIR.UP]=spr_char_chara_down;
	res_move_sprite[DIR.UP]=spr_char_chara_down;
	res_move_speed[DIR.UP]=1/8;
	move_speed[DIR.UP]=0.3;
	move[DIR.UP]=140;
}

with(char_chara_parent){
	res_move_speed[DIR.UP]=1/6;
	move_speed[DIR.UP]=0.5;
	move[DIR.UP]=160;
}

alarm[0]=200;