/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(room=room_house_chara){
	Dialog_Add(Lang_GetString("im.lazy"));
	Dialog_Start();
}
else{
	Dialog_Add(Lang_GetString("blocked.way"));
	Dialog_Start();
}
ready=true