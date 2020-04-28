/// @description Insert description here
// You can write your code in this editor
if(instance_exists(text_typer)){
text_typer._voice=0
}

if(slide=1){
	if(typing=true){
		var inst=instance_create_depth(x,y,depth,text_typer);
		inst.text="{speed 2}Warning!&This game contains themes of depression,&anxiety and suicide..."
		typing=false
		text_typer._voice=0
	}
}
	
	if(slide=2){
		if(typing=true){
			var inst=instance_create_depth(x+20,y,depth,text_typer);
			inst.text="If you feel uncomfortable regarding&the above please do not play!"
			typing=false
			text_typer._voice=0
		}
	}
		if(slide=3){
			if(typing=true){
				var inst=instance_create_depth(x+15,y,depth,text_typer);
				inst.text="Do you accept?&&{choice 0}Yes        {choice 1}No		{choice `TEMP`}"
				typing=false
				text_typer._voice=0
				alarm[0]=9999
			}
			
			
			
}
	