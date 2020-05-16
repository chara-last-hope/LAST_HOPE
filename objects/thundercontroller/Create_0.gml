/// @description Insert description here
// You can write your code in this editor
alarm[0]=irandom(1500)
global.biglightning=false
if(room=room_logo1){
if(Player_GetPlot()>=PLOT.CHARAJUMPINTRO){
	instance_destroy()
}
}