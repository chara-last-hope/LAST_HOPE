vspeed=-0.5-random(0.8);
friction=0.02;
direction+=random(20)-10;
ap=false;
image_alpha=0;
size=0.2+random(0.4);
image_xscale=size;
image_yscale=size;

_light=instance_create_depth(x,y,0,light_circle);
_light.image_xscale=0.3*size;
_light.image_yscale=0.3*size;
_light.image_alpha=1;