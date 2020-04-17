/*
if(self.val=0){
text_blur(x, y,"With every person, there is a story...")
 }
 
if(self.val=1){
text_blur(x, y,"It could be one of love and hope, or one of hatred and despair...")
}

if(self.val=2){
text_blur(x, y,"You have control of how the story ends.")
}

if(self.val=3){
text_blur(x, y,"Will you show that you're loving?")
}

if(self.val=4){
text_blur(x, y,"...or show off your dark side?")
}
*/

if self.activated=false{
if(distance_to_object(obj_introview)<100){
var inst=instance_create_depth(x,y,depth,text_typer);
		inst.text=mytext
		self.activated=true
	}
}