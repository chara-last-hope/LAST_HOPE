/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
char_player.moveable=false;
Player_SetPlot(PLOT.CHARALAY)
char_player.move[DIR.RIGHT]=250;
char_player.move_speed[DIR.RIGHT]=0.8
BGM_Fade(0,0,300)
alarm[0]=300

ready=true