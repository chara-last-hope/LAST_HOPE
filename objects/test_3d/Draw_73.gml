var lookat=matrix_build_lookat(_lookat_from_x,_lookat_from_y,_lookat_from_z,_lookat_to_x,_lookat_to_y,_lookat_to_z,0,0,-1);
camera_set_view_mat(_camera,lookat);


var mat=matrix_build(room_width*0.5,room_height*0.5,-1,0,0,45,1,1,1);
matrix_set(matrix_world,mat);
vertex_submit(_vb_cube,pr_trianglelist,-1);
matrix_set(matrix_world,matrix_build_identity());