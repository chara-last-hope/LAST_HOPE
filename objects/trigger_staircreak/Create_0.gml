/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
if(Player_GetPlot()>=PLOT.STAIRCREAK){
	instance_destroy()
}
else{
event_inherited();
user_char=0
ready=false
}