event_inherited();

if(_ready&&!instance_exists(ui_dialog)){
	_ready=false;
	char_player.move[DIR.LEFT]=5;
	alarm[0]=6;
}