/// @description Insert description here
// You can write your code in this editor
if(global.exists=1){
	room_goto(room_menu)
}
else{
	room_goto(room_house_chara)
	Player_SetPlot(PLOT.SLEPT)
}