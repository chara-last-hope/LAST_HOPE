image_speed=0.5;
direction=random(360);
speed=1/2;
friction=0.05/2;
alarm[0]=20;

_light=instance_create_depth(x,y,0,light_circle);
_light.image_xscale=0.25;
_light.image_yscale=0.25;