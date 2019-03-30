event_inherited();

audio_play_sound(snd_break_1,0,false);

with(char_player){
	moveable=false;
	res_override=true;
	sprite_index=spr_char_chara_fatal;
}

alarm[0]=60;