event_inherited();
if(global._chargetjumper=false){
if(_ready&&!instance_exists(ui_dialog)){
	var choice=Player_GetTextTyperChoice();
	if(choice==0){
		Dialog_Add(Lang_GetString("dialog.house.chara.drawer1"));
		Dialog_Start()
		world.gotjumper=true
		global._chargetjumper=true
		Item_SetArmor(item_sweater)
		Player_SetPlot(PLOT.CHARAJUMPER)
		char_player.moveable=true;
	}else{
		char_player.moveable=true;
	}
	_ready=false;
}
}