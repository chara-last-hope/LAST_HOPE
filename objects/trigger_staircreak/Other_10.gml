/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

audio_play_sound(snd_creak,1,0)
instance_create_depth(char_player.x+10,char_player.y-30,0,exclamation)
char_player.moveable=false
alarm[0]=150

ready=true