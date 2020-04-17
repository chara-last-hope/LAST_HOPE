/// @description Insert description here
// You can write your code in this editor
if(Player_GetPlot()>=PLOT.STARTFADED){
instance_destroy()
}else{
Fader_Fade(1,0,600);
Player_SetPlot(PLOT.STARTFADED)
}