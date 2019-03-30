var inst=instance_create_depth(0,0,0,shaker);
inst.target=char_player;
inst.var_name="x";
inst.shake_random=true;
inst.shake_distance=0.01;
inst.shake_decrease=-0.01;
inst.shake_speed=1;

var inst=instance_create_depth(0,0,0,shaker);
inst.target=char_player;
inst.var_name="y";
inst.shake_random=true;
inst.shake_distance=0.01;
inst.shake_decrease=-0.01;
inst.shake_speed=1;

alarm[1]=120;