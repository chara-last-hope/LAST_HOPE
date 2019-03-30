event_inherited();

Dialog_Add(Lang_GetString("dialog.house.upstairs.try_go_downstairs"));
Dialog_Start();

_ready=true;
char_player.moveable=false;

Player_SetPlot(PLOT.TRIED_GO_DOWNSTAIRS);