/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(room=room_town_0){
	Dialog_Add(Lang_GetString("dialog.try.mountain"));
	Dialog_Start();
}
else{
	Dialog_Add(Lang_GetString("dialog.blocked.way"));
	Dialog_Start();
}
ready=true