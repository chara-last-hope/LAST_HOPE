var X=char_player.x;
var Y=char_player.y;
instance_destroy(char_player);
instance_destroy(shaker);

instance_create_depth(X,Y,0,char_player);
char_player.dir=DIR.RIGHT;
audio_play_sound(snd_noise,0,false);

Player_SetPlot(PLOT.CHARA_BEATEN);