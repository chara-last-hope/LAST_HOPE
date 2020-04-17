/// @description Insert description here
// You can write your code in this editor
BGM_Stop(1)
audio_stop_sound(mus_hallways)
fader.color=c_black
Fader_Fade(-1,1,0,0)
audio_play_sound(snd_hurt,1,0)
alarm[2]=400