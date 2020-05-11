/// @description Insert description here
// You can write your code in this editor
if(_choice==1){
			
			if(zpressed=false){
				//set lang - flag? variable?
				audio_play_sound(snd_menu_confirm,0,0)
				Fader_Fade(0,1,50,0)
				alarm[1]=100
				zpressed=true
			}
		
}

		/*
		if(choice==0){
				Fader_Fade(0,1,50,0)
				alarm[1]=100
			}
		else
			{
				game_end()
		}