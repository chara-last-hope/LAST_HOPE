/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(ready && !instance_exists(ui_dialog)){
  ready=false;
  char_player.move[mydir]=5;
}