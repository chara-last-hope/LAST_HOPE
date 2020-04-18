/// @description Insert description here
// You can write your code in this editor
if(Player_GetPlot()>=PLOT.CHARAUP){
	instance_destroy()
}else{
	char_player.moveable=false
	//Play Animation
	//Chara moving around in bed?
	//
	//
	alarm[0]=500
	Fader_Fade(-1,-1,1,1)
}
