/// @description Insert description here
// You can write your code in this editor
if(selfid=1){
	sprite_index=spr_gayface
	alarm[1]=100
	alarm[0]=0
	audio_play_sound(snd_exclamation,1,0)
	instance_create_depth(char_player.x+10,char_player.y-30,0,exclamation)
}

draw_text(self.x,self.y,"I turn around OoooOooo")