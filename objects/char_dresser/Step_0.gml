event_inherited();
Player_GetInvItem()
ah=Player_GetInvItem()

if(_ready&&!instance_exists(ui_dialog)){
	var choice=Player_GetTextTyperChoice();
	if(choice==0){
		Item_Add(item_sweater)
		Dialog_Add(Lang_GetString("dialog.house.chara.drawer1"));
		Dialog_Start()
		
		char_player.moveable=true;
	}else{
		char_player.moveable=true;
	}
	_ready=false;
}

if(ah=item_sweater){
	global._chargetjumper=true
}