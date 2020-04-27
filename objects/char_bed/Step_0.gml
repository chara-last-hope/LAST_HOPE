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

if(global.bedcover=1){
	block_enabled = true
	image_index=1
}else{
	block_enabled = false
}