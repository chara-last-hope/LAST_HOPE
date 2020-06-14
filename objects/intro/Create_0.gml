/// @description Insert description here
// You can write your code in this editor

typing=false

global.bedcover=0

if(global.exists=1){
	slide=4
	audio_play_sound(mus_audiostory,3,0)
	typing=true
	alarm[0]=650
}
else{
	BGM_Play(0,snd_rainloop01,1)
	slide=0
	alarm[0]=10
}