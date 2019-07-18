gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);

//视角
_lookat_from_x=0;
_lookat_from_y=0;
_lookat_from_z=0;
_lookat_to_x=0;
_lookat_to_y=0;
_lookat_to_z=0;

//定义顶点格式
_v_format=vertex_format_create_simple(true,true,true);

//定义方块模型
_vb_cube=model_load("./model/test.dat",_v_format);

//设置投影相机
_camera=camera_create();
var proj=matrix_build_projection_perspective_fov(-60,-640/480,32,32000);
camera_set_proj_mat(_camera,proj);
view_camera[1]=_camera;
view_visible[1]=true;