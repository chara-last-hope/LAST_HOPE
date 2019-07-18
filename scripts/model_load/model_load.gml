///model_load(filepath, vformat)
/// @func model_load(filepath, vformat)
/// @desc Loads a mobel in via buffer. Returns -1 if the file isn't found, otherwise returns a vertex buffer ID
/// @arg filepath
/// @arg vformat
/// @return -1 on fail or a vbuffer ID

if(!file_exists(argument0))
{
	show_debug_message("File not Found: " + string(argument0));
	return -1;
}
var buff = buffer_load(argument0);

var vbuff = vertex_create_buffer_from_buffer(buff, argument1);

buffer_delete(buff);
return vbuff;
