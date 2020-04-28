event_inherited();

if(Player_GetPlot()==PLOT.TRIED_GO_DOWNSTAIRS){
	Dialog_Add(Lang_GetString("dialog.house.chara.bed.1"));
	_ready=true;
	char_player.moveable=false;
}else{
	Dialog_Add(Lang_GetString("dialog.house.chara.bed.0"));
}
Dialog_Start();

