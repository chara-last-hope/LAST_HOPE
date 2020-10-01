var can_move=(moveable&&_moveable_dialog&&_moveable_menu&&_moveable_save&&_moveable_warp&&_moveable_encounter);

if(can_move){
	if(Input_IsHeld(INPUT.UP)){
		move[DIR.UP]=2;
	}else if(Input_IsHeld(INPUT.DOWN)){
		move[DIR.DOWN]=2;
	}
	if(Input_IsHeld(INPUT.LEFT)){
		move[DIR.LEFT]=2;
	}else if(Input_IsHeld(INPUT.RIGHT)){
		if(room=room_creepyhallway5){
			//do absolutly nothing
			//I caint spellz
		}
		else{
			move[DIR.RIGHT]=2;
		}
	}
	if(Input_IsPressed(INPUT.CONFIRM)){
		var inst=noone;
		if(dir==DIR.UP){
			inst=collision_rectangle(x-sprite_width/2+4,y-5,x+sprite_width/2-4,y-sprite_height+5,char,false,true);
		}
		if(dir==DIR.DOWN){
			inst=collision_rectangle(x-sprite_width/2+4,y-sprite_height+20,x+sprite_width/2-4,y+15,char,false,true);
		}
		if(dir==DIR.LEFT){
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2-15,y,char,false,true);
		}
		if(dir==DIR.RIGHT){
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2+15,y,char,false,true);
		}
		if(instance_exists(inst)){
			with(inst){
				event_user(0);
			}
		}
	}
	if(!instance_exists(ui_dialog)){
		if(Input_IsPressed(INPUT.MENU)){
		alarm[1]=20
	}
		if(Input_IsReleased(INPUT.MENU)){
			if(!instance_exists(ui_settings)){
			instance_create_depth(0,0,0,ui_menu);
			}
			alarm[1]=0
		}
		
	}
}

event_inherited();


if(smiling=false){
res_idle_sprite[DIR.UP]=spr_char_chara_up;
res_idle_sprite[DIR.DOWN]=spr_char_chara_down;
res_idle_sprite[DIR.LEFT]=spr_char_chara_right;
res_idle_sprite[DIR.RIGHT]=spr_char_chara_right;
res_move_sprite[DIR.UP]=spr_char_chara_up;
res_move_sprite[DIR.DOWN]=spr_char_chara_down;
res_move_sprite[DIR.LEFT]=spr_char_chara_right;
res_move_sprite[DIR.RIGHT]=spr_char_chara_right;
}
if(smiling=true){
res_idle_sprite[DIR.UP]=spr_char_chara_up;
res_idle_sprite[DIR.DOWN]=spr_char_chara_dark_down;
res_idle_sprite[DIR.LEFT]=spr_char_chara_dark_right;
res_idle_sprite[DIR.RIGHT]=spr_char_chara_dark_right;
res_move_sprite[DIR.UP]=spr_char_chara_up;
res_move_sprite[DIR.DOWN]=spr_char_chara_dark_down;
res_move_sprite[DIR.LEFT]=spr_char_chara_dark_right;
res_move_sprite[DIR.RIGHT]=spr_char_chara_dark_right;
}

//Water Splash
inwater=place_meeting(x,y,trigger_inwater);



//Step sounds
wood_stepable=place_meeting(x,y,trigger_wood_stepable)

if(image_index=1 && inwater=1){
	audio_play_sound(snd_splash,0,false);	
}






_light.x=x;
_light.y=y-sprite_height/2;