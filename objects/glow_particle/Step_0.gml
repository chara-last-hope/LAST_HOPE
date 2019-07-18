if(!ap){
	image_alpha+=0.25/2;
}
if(image_alpha>0.6){
	ap=true;
}

direction+=(random(6)-3)/2;
speed+=(random(0.04)-0.02)/2;
image_alpha-=0.01/2;

_light.x=x;
_light.y=y;
//_light.image_alpha=image_alpha+0.3;

if(image_alpha<=0){
	instance_destroy();
}