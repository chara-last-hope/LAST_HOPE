event_inherited();
//if(room=room_house_chara){

	if(global._chargetjumper=false){
		Dialog_Add(Lang_GetString("dialog.house.chara.drawer"));
		_ready=true;
		char_player.moveable=false;
		Dialog_Start();
		//start chara animation
		
	}

 if(global._chargetjumper=true)
	{
		Dialog_Add(Lang_GetString("dialog.house.chara.drawer2"));
		Dialog_Start()
		char_player.moveable=true;
		
	}
	

/*if(Player_GetPlot()==PLOT.CHARAJUMPER){
		Dialog_Add(Lang_GetString("dialog.house.chara.drawer2"));
		Dialog_Start()
		char_player.moveable=true;
}
else
	{
		Dialog_Add(Lang_GetString("dialog.house.chara.drawer"));
		_ready=true;
		char_player.moveable=false;
		Dialog_Start();
		//start chara animation
}