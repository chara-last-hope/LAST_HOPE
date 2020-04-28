event_inherited();

	if(global._chargetjumper=false){
	Dialog_Add(Lang_GetString("dialog.house.chara.drawer"));
	_ready=true;
	char_player.moveable=false;
	Dialog_Start();
	}

 if(global._chargetjumper=true)
	{
		Dialog_Add(Lang_GetString("dialog.house.chara.drawer2"));
		Dialog_Start()
		char_player.moveable=true;
		
	}

