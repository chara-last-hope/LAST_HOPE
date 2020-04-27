/// @description Insert description here
// You can write your code in this editor
image_alpha-=0.005
if(image_alpha>1){
	instance_destroy()
	}
	
	depth=-999999999
	
	image_xscale=room_width
	image_yscale=room_height
	
	if(Player_GetPlot()>=PLOT.WAKETHUNDER){
	instance_destroy()
}