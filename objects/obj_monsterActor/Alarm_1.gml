/// @description Insert description here
// You can write your code in this editor
Player_SetPlot(PLOT.CHARA_RUN)
instance_create_depth(0,0,1,blinking)
with(char_player){
	char_player.moveable=false;
	char_player.move_speed[DIR.DOWN]=5
	char_player.move[DIR.DOWN]=260;
	Anim_Create(camera,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT, camera.y, 1008-camera.y, 250);
}