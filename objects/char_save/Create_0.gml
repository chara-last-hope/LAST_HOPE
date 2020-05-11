event_inherited();
_light=instance_create_depth(x,y,0,light_circle);
_light.image_xscale=0.5
_light.image_yscale=0.5;

var spd=1/3;
res_idle_speed[0]=spd;
res_idle_speed[90]=spd;
res_idle_speed[180]=spd;
res_idle_speed[270]=spd;

res_move_speed[0]=spd;
res_move_speed[90]=spd;
res_move_speed[180]=spd;
res_move_speed[270]=spd;

res_talk_speed[0]=spd;
res_talk_speed[90]=spd;
res_talk_speed[180]=spd;
res_talk_speed[270]=spd;