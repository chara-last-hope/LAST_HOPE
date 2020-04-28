/// @description Insert description here
// You can write your code in this editor
if self.activated=false{
if(distance_to_object(char_player)<130){
var inst=instance_create_depth(x,y,depth,text_typer);
		inst.text=("We need to make random text!")
		self.activated=true
	}
}