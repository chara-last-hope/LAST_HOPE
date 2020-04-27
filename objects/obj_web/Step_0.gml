/// @description Insert description here
// You can write your code in this editor
if(fadeout=true){image_alpha-=0.5}
if(image_alpha<0){instance_destroy()}

if(burst=true)instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),0,web_fragment)