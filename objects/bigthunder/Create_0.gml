/// @description Insert description here
// You can write your code in this editor
if(Player_GetPlot()>=PLOT.WAKETHUNDER){
	instance_destroy()
}else{
	audio_play_sound(snd_thunderboom,1,0)
	image_alpha=1
	
	image_xscale=room_width
	image_yscale=room_height
}