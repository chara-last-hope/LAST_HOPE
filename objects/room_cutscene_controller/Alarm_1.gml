/// @description Insert description here
// You can write your code in this editor
Player_SetPlot(PLOT.CHARAUP)
char_player.moveable=true
char_player.move[DIR.DOWN]=1
char_player.move_speed[DIR.LEFT]=2
char_bed.block_enabled = true
instance_destroy()
instance_destroy(obj_bedcovers)