event_inherited();

with(char_player){
path_start(path_jumptemp,2,0,0)	
}

char_player.moveable=false;
Player_SetPlot(PLOT.CHARA_JUMP)
camera.target=noone
pitchup=true
fader.color=c_white
Fader_Fade(1,1,600);
//instance_deactivate_object(blinking)
instance_destroy(blinking)

alarm[1]=300