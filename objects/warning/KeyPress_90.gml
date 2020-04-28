/// @description Insert description here
// You can write your code in this editor
slide++
if(!instance_exists(text_typer)){
			var choice=Player_GetTextTyperChoice();
			if(choice==0){
				room_goto_next()
			}
		else
			{
				game_end()
		}
		
	}