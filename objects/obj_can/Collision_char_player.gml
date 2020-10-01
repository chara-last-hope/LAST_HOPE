/// @description Insert description here
// You can write your code in this editor
if(bonk == 1) {
    hspeed= 0;
    vspeed= 0;
    bonk= 0;
	friction= 1;
} else  {
    if(char_player.dir==DIR.LEFT){ hspeed-= 0.6;} //left
    if(char_player.dir==DIR.UP){ vspeed-= 0.6;} //up
    if(char_player.dir==DIR.RIGHT){ hspeed+= 0.6;} //right
    if(char_player.dir==DIR.DOWN){ vspeed+= 0.6;}//down
	friction= 0
}
other.x= other.xprevious;
other.y= other.yprevious;
