event_inherited();


char_player.moveable=false;
char_player.move[DIR.LEFT]=200
Player_SetPlot(PLOT.CHARA_JUMP)
camera.target=noone
pitchup=true
fader.color=c_white
Fader_Fade(0,1,250);
//instance_deactivate_object(blinking)
instance_destroy(blinking)

alarm[1]=300