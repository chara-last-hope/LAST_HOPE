/*self.con = 0
self.t = -10
self.m = (self.sprite_height / 2)
self.tmax = (self.sprite_height / 2)
self.momentum = 0
//audio_play_sound(snd_appear,10,0)

alarm[0]=50
mydraw=0
alarm[1]=0
*/

var myday = date_get_day(date_current_datetime());
var mymonth = date_get_month(date_current_datetime());

if(myday=1&&mymonth=4){
sprite_index=spr_largemenu_final
x=-145/2+320*1.45
y=-40/2+50

image_xscale=-0.5
image_yscale=0.5
}