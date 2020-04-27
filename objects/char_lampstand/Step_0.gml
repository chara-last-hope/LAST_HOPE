/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(_activated = 1 && _created=false){
	instance_create_depth(x+5,y,0,light_circle1);
	_created = true
}

if(_activated=0){
instance_destroy(light_circle1)	
}

if(_activated>1){
_activated=0
_created=false
}

if(_angerval>10){
Dialog_Add((Lang_GetString("dialog.house.parent.angry")))	
Dialog_Start()
_angerval=0
}