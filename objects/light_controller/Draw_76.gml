if(!surface_exists(_surface)){
	_surface=surface_create(room_width,room_height);
}

surface_set_target(_surface);{
	draw_clear(c_black);
}surface_reset_target();