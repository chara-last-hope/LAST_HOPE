/// @description Insert description here
// You can write your code in this editor
	thunderpitch=irandom_range(1,2)
	audio_play_sound(snd_thundernotboom,1,0)
	audio_sound_pitch(snd_thundernotboom,thunderpitch)
	if(instance_exists(obj_light_parent)){
	obj_light_parent.light_flash=1
	alarm[0]=10
	}
	//if(global.biglightning=true){
	//light_controller.alpha=0
	//}