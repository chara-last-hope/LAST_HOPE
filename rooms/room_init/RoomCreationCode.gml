if(debug_mode){
	window_set_size(1280,960)
}
window_set_caption("Init")

	global.exists=file_exists(Flag_GetSavePath(FLAG_TYPE.INFO));
	
	if(global.exists=1){
		room_goto(room_menu)
	}