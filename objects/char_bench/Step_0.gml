event_inherited();

if(_ready&&!instance_exists(ui_dialog)){
	var choice=Player_GetTextTyperChoice();
	if(choice==0){
		Dialog_Add(Lang_GetString("dialog.town.bench1"));
	}else{
		char_player.moveable=true;
	}
	_ready=false;
}
