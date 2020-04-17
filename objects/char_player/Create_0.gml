event_inherited();

char_id=0;
smiling=false


res_idle_sprite[DIR.UP]=spr_char_chara_up;
res_idle_sprite[DIR.DOWN]=spr_char_chara_down;
res_idle_sprite[DIR.LEFT]=spr_char_chara_right;
res_idle_sprite[DIR.RIGHT]=spr_char_chara_right;
res_move_sprite[DIR.UP]=spr_char_chara_up;
res_move_sprite[DIR.DOWN]=spr_char_chara_down;
res_move_sprite[DIR.LEFT]=spr_char_chara_right;
res_move_sprite[DIR.RIGHT]=spr_char_chara_right;

moveable=true;
_moveable_dialog=true;
_moveable_menu=true;
_moveable_save=true;
_moveable_warp=true;
_moveable_encounter=true;
_moveable_box=true;

_light=instance_create_depth(x,y-sprite_height/2,0,light_circle);