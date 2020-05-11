/// @description Insert description here
// You can write your code in this editor
if(Player_GetPlot()>=PLOT.CHARAJUMPINTRO){
alarm[0]=610
}
else{
	alarm[0]=650
}
slide++
Fader_Fade(0,1,50,0)
Fader_Fade(1,0,50,0)
instance_destroy(text_typer)
if(instance_exists(obj_introtile)){obj_introtile.image_index++}
typing=true