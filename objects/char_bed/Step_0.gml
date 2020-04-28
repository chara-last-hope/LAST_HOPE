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

if(Player_GetPlot()>=PLOT.CHARAUP){
	image_index=1
	block_enabled = true
}else{
	image_index=0
	block_enabled = false
}

if(global.bedcover=1){
	block_enabled = true
	image_index=1
}else{
	block_enabled = false
	image_index=0
}