///vertex_format_create_simple(hasNormal, hasColour, hasTexcoord, *hasTangentData)
///@func vertex_format_create_simple(hasNormal, hasColour, hasTexcoord)
///@desc Creates and returns a simple vertex format including Position3D as well as the others specified in the arguments. Useful when used with my Blender Export.
///@arg hasNormal
///@arg hasColour
///@arg hasTexcoord
///@return Vertex Format ID
function vertex_format_create_simple() {

	vertex_format_begin();
	vertex_format_add_position_3d();
	if(argument_count > 0 && argument[0]){
		vertex_format_add_normal();
	}
	if(argument_count > 1 && argument[1]){
		vertex_format_add_color();
	}
	if(argument_count > 2 && argument[2]){
		vertex_format_add_texcoord();
	}
	if(argument_count > 3 && argument[3]){
		vertex_format_add_custom(vertex_type_float3, vertex_usage_texcoord);
		vertex_format_add_custom(vertex_type_float3, vertex_usage_texcoord);
	}


	return vertex_format_end();


}
