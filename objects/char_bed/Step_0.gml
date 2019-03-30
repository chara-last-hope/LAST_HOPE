event_inherited();

if(_ready&&!instance_exists(ui_dialog)){
	var choice=Player_GetTextTyperChoice();
	if(choice==0){
		Fader_Fade(-1,1,60);
		alarm[0]=120;
	}else{
		char_player.moveable=true;
	}
	_ready=false;
}