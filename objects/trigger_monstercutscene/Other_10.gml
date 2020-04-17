/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with(obj_monsterActor){
alarm[0]=300
}

char_player.moveable=false;
Player_SetPlot(PLOT.MONSTER_CUTSCENE)
camera.target=noone
BGM_Stop(0)
Anim_Create(camera,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT, camera.y, 580-camera.y, 500);