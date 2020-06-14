event_inherited();

if(_ready&&!instance_exists(ui_dialog)){
	var choice=Player_GetTextTyperChoice();
	if(choice==0){
		//Dialog_Add("* You sit down on the bench&  and gaze into the field&  of golden flowers...{pause}{clear}* Your head feels heavy...{pause}{clear}* You begin to nod off to sleep...");
		Dialog_Add(Lang_GetString("dialog.town.bench1"));
		Dialog_Start();
		alarm[0]=120
	}else{
		char_player.moveable=true;
	}
	_ready=false;
}
