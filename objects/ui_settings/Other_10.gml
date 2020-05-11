if(_state==0){
	_inst_inventory=instance_create_depth(16+6+82,16+6+20,0,text_typer);
	_inst_inventory.text=_prefix+"Settings";
	
	_inst_finish.text=_prefix+Lang_GetString("ui.box.finish");
	
	//event_user(1);
}