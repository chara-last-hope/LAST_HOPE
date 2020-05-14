
//Player_SetPlot(PLOT.CHARAUP);
instance_destroy(obj_charasmile)
char_player.smiling=false
window_set_caption("...");

if(Player_GetPlot()>=PLOT.WAKETHUNDER){
	instance_destroy(bigthunder)
}
