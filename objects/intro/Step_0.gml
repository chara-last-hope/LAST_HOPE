/// @description Insert description here
// You can write your code in this editor
if(instance_exists(text_typer)){
text_typer._voice=0
}

if(slide=1){
	if(typing=true){
		var inst=instance_create_depth(x,y,depth,text_typer);
		var inst1=instance_create_depth(x,y+40,depth,text_typer);
		inst.text="{speed 5}With every person,{sleep 20} there's a story...&{sleep 50}Be it one of hope, {sleep 20}or of despair..."
		typing=false
		text_typer._voice=0
	}
}
	
	if(slide=2){
		if(typing=true){
		var inst=instance_create_depth(x+10,y+20,depth,text_typer);
		inst.text="{speed 5}This story is one of a child,&{sleep 50}born into a world of hatred..."
		typing=false
		text_typer._voice=0
		}
	}
		if(slide=3){
			if(typing=true){
		//BGM_Pause(0)
		var inst=instance_create_depth(x+35,y+20,depth,text_typer);
		inst.text="{speed 5}This,{sleep 20} is their story..."
		typing=false
		text_typer._voice=0
			}
		}
			
			if(slide=4){
			if(typing=true){
				y=169
				instance_create_depth(30,20,0,obj_introtile)
				obj_introtile.image_index=0
		BGM_Resume(0)
		var inst=instance_create_depth(x+10,y,depth,text_typer);
		inst.text="{speed 3}A long time after THE WAR&between the humans and monsters...&{sleep 50}A legend emerged..."
		typing=false
		text_typer._voice=0
			}
			}
			
			if(slide=5){
			if(typing=true){
			
			}
	}

if(slide=6){
			if(typing=true){
	
			}
		}
		
		if(slide=7){
			if(typing=true){
		
			}
		}
		
		if(slide=8){
			
			}
		}
		
		if(slide=9){room_goto(room_logo)}