/// @description Insert description here
// You can write your code in this editor
if(instance_exists(text_typer)){
text_typer._voice=0
}

if(slide=1){
	if(typing=true){
		var inst=instance_create_depth(x-5,y+20,depth,text_typer);
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
		var inst=instance_create_depth(x+45,y+20,depth,text_typer);
		inst.text="{speed 5}This,{sleep 20} is their story..."
		typing=false
		text_typer._voice=0
			}
		}
			
			if(slide=4){
				if(Player_GetPlot()>=PLOT.CHARAJUMPINTRO){
					//play full intro after chara jumps
					if(typing=true){
						y=169
						instance_create_depth(35,20,0,obj_introtile)
						obj_introtile.image_index=0
						BGM_Resume(0)
						var inst=instance_create_depth(x+10,y,depth,text_typer);
						inst.text="{speed 3}Many years after THE WAR&between the HUMANS and MONSTERS...&{sleep 50}A legend emerged..."
						typing=false
						text_typer._voice=0
						}
				}
				
				else
			{
				room_goto(room_house_chara)	
				Player_SetPlot(PLOT.SLEPT)
				BGM_Stop(0)
			}
				
		}
			
			
			
			
			if(slide=5){
			if(typing=true){
				var inst=instance_create_depth(x+35,y,depth,text_typer);
				inst.text="{speed 5}A legend of a mountain..."
				typing=false
			}
	}

if(slide=6){
			if(typing=true){
				var inst=instance_create_depth(x+10,y,depth,text_typer);
				inst.text="{speed 5}It told that those who climb the&face of the mountain are never&to return..."
				typing=false
			}
		}
		
		if(slide=7){
			if(typing=true){
				//Begins to jump
			}
		}
		
		if(slide=8){
			//Fully jumps
			}
			
			if(slide=9){
			
			}
			
			if(slide=10){
			
			}
			
			
		
		
		if(slide=11){room_goto(room_logo)
			Player_SetPlot(PLOT.SLEPT)
}